//
//  Actionable.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/29.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire

public class Actionable<Element:BooleanLiteralConvertible> : ObservableType{
    
    public typealias E = Element
    
    var mothod : Alamofire.Method
    var url : URLStringConvertible
    var parameters : [String: AnyObject]?
    var encoding: ParameterEncoding = .URL
    var headers: [String: String]?
    
    
    public func subscribe<O : ObserverType where O.E == E>(observer: O) -> Disposable {
        
        let request = Alamofire.request(self.mothod,url,parameters: self.parameters,encoding: self.encoding,headers: self.headers)
        request.responseBool().subscribe(observer)
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
    func responseBool<E:BooleanLiteralConvertible>()->Observable<E>{
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
                guard let statusCode = response.response?.statusCode else{
                    observer.onError(YYError.YYNoStatuCode)
                    return
                }
                if statusCode == 204{
                    observer.onNext(true)
                    observer.onCompleted()
                    return
                }
                if statusCode == 404{
                    observer.onNext(false)
                    observer.onCompleted()
                    return
                }
                observer.onError(YYError.YYUnKnowStatuCode(status: statusCode, message:response.result.value?.valueForKey("message") as? String))
            })
            return NopDisposable.instance
        })
    }
}