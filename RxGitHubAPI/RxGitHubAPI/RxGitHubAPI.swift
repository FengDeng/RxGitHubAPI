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
        return Requestable(mothod: .GET, url: kUserURL(username))
    }
    
    /**
     Get the authenticated user
     
     - parameter username: username description
     - parameter password: password description
     
     - returns: Requestable<YYUser>
     */
    static var yy_user : Requestable<YYUser>{
        return Requestable(mothod: .GET, url: kUserURL(RxGitHubUserName),headers:AuthHeader)
    }
    
    
    /**
     search repos
     
     - parameter q:        The search keywords, as well as any qualifiers.
     - parameter language: language
     - parameter sort:     The sort field. One of stars, forks, or updated. Default: results are sorted by best match.
     - parameter order:    The sort order if sort parameter is provided. One of asc or desc. Default: desc
     
     - returns: return value description
     */
    static func searchRepos(q:String,page:Int = 0,per_page:Int = 30,language:String? = nil,sort:String? = nil,order:String? = nil)->Requestable<YYSearchRepos>{
        
        var query = q
        
        if let language = language{
            query = query + "+language:\(language)"
        }
        
        var dic = ["q":query]
        
        dic.union(["page":"\(page)","per_page":"\(per_page)"])
        
        if let sort = sort{
            dic = dic.union(["sort":sort])
        }
        
        if let order = order {
            dic = dic.union(["order":order])
        }
        return Requestable(mothod: .GET, url: kSearchReposURL,parameters:dic)
    }
    
    
    /**
     search users
     
     - parameter q:     The search terms.
     - parameter sort:  The sort field. Can be followers, repositories, or joined. Default: results are sorted by best match.
     - parameter order: The sort order if sort parameter is provided. One of asc or desc. Default: desc
     
     - returns: return value description
     */
    static func searchUsers(q:String,page:Int = 0,per_page:Int = 30,sort:String? = nil,order:String? = nil)->Requestable<YYSearchUsers>{
        
        var dic = ["q":q]
        
        dic.union(["page":"\(page)","per_page":"\(per_page)"])
        
        if let sort = sort{
            dic = dic.union(["sort":sort])
        }
        
        if let order = order {
            dic = dic.union(["order":order])
        }
        return Requestable(mothod: .GET, url: kSearchUsersURL,parameters:dic)
    }
    
    
}