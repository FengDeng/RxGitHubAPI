//
//  YYGist.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYGist : NSObject{
    
    public private(set) var id = ""
    public private(set) var _description = ""
    public private(set) var _public = false
    public private(set) var owner  = YYUser()
    public private(set) var truncated = false
    public private(set) var comments = 0
    public private(set) var html_url = ""
    public private(set) var git_pull_url = ""
    public private(set) var git_push_url = ""
    public private(set) var created_at = ""
    public private(set) var updated_at = ""
    
    public override static func mj_replacedKeyFromPropertyName() -> [NSObject : AnyObject]! {
        return ["_description":"description","_public":"public"]
    }
    
    //api
    var url = ""
    var forks_url = ""
    var commits_url = ""
    var comments_url = ""
    
}