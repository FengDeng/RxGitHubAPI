//
//  YYUser.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/27.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYPlan : NSObject{
    public private(set) var collaborators = 0
    public private(set) var name = ""
    public private(set) var private_repos  = 0
    public private(set) var space = 0
}

public class YYUser : NSObject{
    public private(set) var login = ""
    public private(set) var id = 0
    public private(set) var avatar_url = ""
    public private(set) var gravatar_id = ""
    public private(set) var html_url = ""
    public private(set) var type = ""
    public private(set) var site_admin = ""
    public private(set) var name = ""
    public private(set) var company = ""
    public private(set) var blog = ""
    public private(set) var location = ""
    public private(set) var email = ""
    public private(set) var hireable = false
    public private(set) var bio = ""
    public private(set) var public_repos = 0
    public private(set) var public_gists = 0
    public private(set) var followers = 0
    public private(set) var following = 0
    public private(set) var created_at = ""
    public private(set) var updated_at = ""
    public private(set) var total_private_repos = 0
    public private(set) var owned_private_repos = 0
    public private(set) var private_gists = 0
    public private(set) var disk_usage = 0
    public private(set) var collaborators = 0
    public private(set) var plan = YYPlan()
    
    
    //api
    var url = ""
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