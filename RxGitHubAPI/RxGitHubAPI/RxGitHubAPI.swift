//
//  RxGitHubAPI.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/27.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift

class RxGitHubAPI{
    
    /**
     Get a single user
     
     - parameter username: username description
     
     - returns: Requestable<YYUser>
     */
    static func yy_user(username:String)->Requestable<YYUser>{
        return Requestable<YYUser>(mothod: .GET, url: userURL(username))
    }
    
    /**
     Get the authenticated user
     
     - parameter username: username description
     - parameter password: password description
     
     - returns: Requestable<YYUser>
     */
    static func yy_user()->Requestable<YYUser>{
        return Requestable<YYUser>(mothod: .GET, url: userURL(RxGitHubUserName),headers:AuthHeader())
    }
    
    
    
    
    
}