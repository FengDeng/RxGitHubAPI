//
//  File.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire

/*
public protocol PageableType : ObservableType{

//typealias E : _ArrayType


//func nextPage()->Pageable<E>

func page<Element : _ArrayType where Element.Generator.Element : NSObject>(page:Int,per_page:Int)->Pageable<Element>

}*/

public class Pageable<Element : _ArrayType where Element.Generator.Element : NSObject> : ObservableType{
    
    private var page = 1
    private var per_page = 30 {
        didSet{
            if per_page == 0 || per_page > 100{
                per_page = 30
            }
        }
    }
    
    public typealias E = Element
    
    var mothod : Alamofire.Method
    var url : URLStringConvertible
    var parameters : [String: AnyObject]?
    var encoding: ParameterEncoding = .URL
    var headers: [String: String]?
    
    let disposeBag = DisposeBag()
    
    var responseHeaders : [NSObject : AnyObject]?
    
    
    
    
    init(mothod:Alamofire.Method,url:URLStringConvertible,parameters: [String: AnyObject]? = nil,
        encoding: ParameterEncoding = .URL,
        headers: [String: String]? = nil) {
            self.mothod = mothod
            self.url = url
            self.parameters = parameters
            self.encoding = encoding
            self.headers = headers
            
            print(self)
    }
    
    public  func subscribe<O : ObserverType where O.E == E>(observer: O) -> Disposable {
        
        let paras = ["page":self.page,"per_page":self.per_page].union(self.parameters)
        
        let request = Alamofire.request(self.mothod,url,parameters:paras,encoding: self.encoding,headers: self.headers)
        request.responseObjectArray(E).subscribe(observer)
        
        return AnonymousDisposable{
            request.cancel()
        }
    }
    
    
    public func page(page: Int, per_page: Int = 30) -> Self {
        self.page = page
        self.per_page = per_page
        return self
    }
    
}



extension Request{
    func responseObjectArray<T : _ArrayType where T.Generator.Element : NSObject>(classType:T.Type)->Observable<T>{
        return Observable.create({ observer -> Disposable in
            self.responseJSON(completionHandler: { (response) -> Void in
                //判断Response是否有error
                if let responseError = response.result.error{
                    observer.onError(responseError)
                    return
                }
                
                //判断是否有 result 是否有error
                if let err = response.result.error{
                    observer.onError(err)
                    return
                }

                //判断result 的value是否是一个数组
                guard let json = response.result.value as? [[String : AnyObject]] else{
                    observer.onError(YYError.YYCouldNotMakeObjectArrayError(status: response.response?.statusCode, message:response.result.value?.valueForKey("message") as? String))
                    return
                }
                var objects = T()
                print(json)
                for dict in json {
                    if let obj = T.Generator.Element.mj_objectWithKeyValues(dict) {
                        objects.append(obj)
                    }
                }
                observer.onNext(objects)
                observer.onCompleted()
            })
            return NopDisposable.instance
        })
    }
}