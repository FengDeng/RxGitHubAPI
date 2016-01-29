//
//  YYTeam.swift
//  RxGitHub
//
//  Created by 邓锋 on 16/1/27.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYTeam : NSObject{
    public var id = 0
    public var name = ""
    public var slug = ""
    public var _description = ""
    public var privacy = ""
    public var permission = ""
    
    public static override func mj_replacedKeyFromPropertyName() -> [NSObject : AnyObject]! {
        return ["_description":"description"]
    }
    
    //api
    var url = ""
    var members_url = ""
    var repositories_url = ""
}