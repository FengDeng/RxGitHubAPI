//
//  YYUser+Observable.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/27.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire

extension YYUser{
    
    /**
     list followers
     
     - returns: Observable<[YYUser]>
     */
    public var yy_followers:Pageable<[YYUser]>{
        return Pageable(mothod: .GET, url: self.followers_url.yy_clear)
    }
    
    /**
     list followings
     
     - returns: Observable<[YYUser]>
     */
    
    public var yy_followings : Pageable<[YYUser]>{
        return Pageable(mothod: .GET, url: self.following_url.yy_clear)
    }
    
    /**
     list gists
     
     - returns: return value description
     */
    public var yy_gist : Pageable<[YYGist]>{
        return Pageable(mothod: .GET, url: self.gists_url.yy_clear)
    }
    
    /**
     list starred repo
     
     - returns: return value description
     */
    public var yy_starred : Pageable<[YYRepository]>{
        return Pageable(mothod: .GET, url: self.starred_url.yy_clear)
    }
    
    /**
     list subscriptions repo
     
     - returns: return value description
     */
    public var yy_subscriptions : Pageable<[YYRepository]>{
        return Pageable(mothod: .GET, url: self.subscriptions_url.yy_clear)
    }
    
    /**
     list subscriptions orgs
     
     - returns: return value description
     */
    public var yy_organizations : Pageable<[YYOrganization]>{
        return Pageable(mothod: .GET, url: self.organizations_url.yy_clear)
    }
    
    /**
     list user repo
     
     - returns: return value description
     */
    public var yy_repos : Pageable<[YYRepository]>{
        return Pageable(mothod: .GET, url: self.repos_url.yy_clear)
    }
    
    
    //fix me
    public var yy_events : Pageable<[YYEvent]>{
        return Pageable(mothod: .GET, url: self.events_url.yy_clear)
    }
    
    //public var yy_received_events
    
    
    //action needs Auth
    
    /**
    follow this user
    
    - returns: return value description
    */
    public var action_follow : Actionable<Bool>{
        return Actionable(mothod: .PUT, url: self.action_follow_url.yy_clear,headers:AuthHeader)
    }
    
    /**
     unFollow this user
     
     - returns: return value description
     */
    public var action_unFollow : Actionable<Bool>{
        return Actionable(mothod: .DELETE, url: self.action_follow_url.yy_clear,headers:AuthHeader)
    }
    
    /**
     check you are following this user
     
     - returns: return value description
     */
    public var action_checkFollow : Actionable<Bool>{
        return Actionable(mothod: .GET, url: self.action_follow_url.yy_clear,headers:AuthHeader)
    }
    
    
    
}