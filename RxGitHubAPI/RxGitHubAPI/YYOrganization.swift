//
//  YYOrganization.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYOrganization : NSObject{
    public private(set) var login = ""
    public private(set) var id = 0
    public private(set) var avatar_url = ""
    public private(set) var _description = ""
    
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