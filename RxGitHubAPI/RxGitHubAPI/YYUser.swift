//
//  YYUser.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/27.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYPlan : NSObject{
    public var collaborators = 0
    public var name = ""
    public var private_repos  = 0
    public var space = 0
}

public class YYUser : NSObject{
    public var login = ""
    public var id = 0
    public var avatar_url = ""
    public var gravatar_id = ""
    public var html_url = ""
    public var type = ""
    public var site_admin = ""
    public var name = ""
    public var company = ""
    public var blog = ""
    public var location = ""
    public var email = ""
    public var hireable = false
    public var bio = ""
    public var public_repos = 0
    public var public_gists = 0
    public var followers = 0
    public var following = 0
    public var created_at = ""
    public var updated_at = ""
    public var total_private_repos = 0
    public var owned_private_repos = 0
    public var private_gists = 0
    public var disk_usage = 0
    public var collaborators = 0
    public var plan = YYPlan()
    
    
    //api
    var followers_url = ""
    var following_url = ""
    var gists_url = ""
    var starred_url = ""
    var subscriptions_url = ""
    var organizations_url = ""
    var repos_url = ""
    var events_url = ""
    var received_events_url = ""
    
    //combination api
    var action_follow_url : String{
        get{
            return domain + "/user/following/\(self.login)"
        }
    }
    
    
    
    
}