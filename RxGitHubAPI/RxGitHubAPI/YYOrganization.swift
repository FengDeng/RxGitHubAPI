//
//  YYOrganization.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYOrganization : NSObject{
    public var login = ""
    public var id = 0
    public var avatar_url = ""
    public var _description = ""
    
    public override static func mj_replacedKeyFromPropertyName() -> [NSObject : AnyObject]! {
        return ["_description":"description"]
    }
    
    //api
    var url = ""
    var repos_url = ""
    var events_url = ""
    var members_url = ""
    var public_members_url = ""
}