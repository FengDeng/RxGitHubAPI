//
//  YYGist.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYGist : NSObject{
    
    public var id = ""
    public var _description = ""
    public var _public = false
    public var owner  = YYUser()
    public var truncated = false
    public var comments = 0
    public var html_url = ""
    public var git_pull_url = ""
    public var git_push_url = ""
    public var created_at = ""
    public var updated_at = ""
    
    public override static func mj_replacedKeyFromPropertyName() -> [NSObject : AnyObject]! {
        return ["_description":"description","_public":"public"]
    }
    
    //api
    var url = ""
    var forks_url = ""
    var commits_url = ""
    var comments_url = ""
    
}