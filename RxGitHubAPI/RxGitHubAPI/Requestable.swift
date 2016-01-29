//
//  Requstable.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/27.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire

public class Requestable<Element:NSObject> : ObservableType{
    public typealias E = Element
    
    var mothod : Alamofire.Method
    var url : URLStringConvertible
    var parameters : [String: AnyObject]?
    var encoding: ParameterEncoding = .URL
    var headers: [String: String]?
    
    
    public func subscribe<O : ObserverType where O.E == E>(observer: O) -> Disposable {
        
        let request = Alamofire.request(self.mothod,url,parameters: self.parameters,encoding: self.encoding,headers: self.headers)
        request.responseObject(E).subscribe(observer)
        return AnonymousDisposable{
            request.cancel()
        }
    }
    
    public init(mothod:Alamofire.Method,url:URLStringConvertible,parameters: [String: AnyObject]? = nil,
        encoding: ParameterEncoding = .URL,
        headers: [String: String]? = nil){
            self.mothod = mothod
            self.url = url
            self.parameters = parameters
            self.encoding = encoding
            self.headers = headers
    }
    
}


extension Request{
    func responseObject<T:NSObject>(classType:T.Type)->Observable<T>{
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
                
                guard let json = response.result.value else{
                    observer.onError(YYError.YYCouldNotMakeObjectError(status: response.response?.statusCode, message:response.result.value?.valueForKey("message") as? String))
                    return
                }
                
                //获取返回值的message,如果有的话
                if let message = json.valueForKey("message") as? String{
                    observer.onError(YYError.YYGitHubErrorJSON(message: message))
                    return
                }
                
                guard let obj = T.mj_objectWithKeyValues(json) else{
                    observer.onError(YYError.YYCouldNotMakeObjectError(status: response.response?.statusCode, message:response.result.value?.valueForKey("message") as? String))
                    return
                }
                observer.onNext(obj)
                observer.onCompleted()

            })
            return NopDisposable.instance
        })
    }
}
