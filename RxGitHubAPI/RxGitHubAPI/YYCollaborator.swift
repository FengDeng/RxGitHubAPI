//
//  YYCollaborator.swift
//  RxGitHub
//
//  Created by 邓锋 on 16/1/27.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYCollaborator : NSObject{
    public var login = ""
    public var id = 0
    public var avatar_url = ""
    public var gravatar_id = ""
    public var html_url = ""
    public var type = ""
    public var site_admin = false
    public var permissions_pull = false
    public var permissions_push = false
    public var permissions_admin = false
    
    public static override func mj_replacedKeyFromPropertyName() -> [NSObject : AnyObject]! {
        return ["permissions_pull":"permissions.pull","permissions_push":"permissions.push","permissions_admin":"permissions.admin"]
    }
    
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
}