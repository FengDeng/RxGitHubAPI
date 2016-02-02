//
//  YYTeam.swift
//  RxGitHub
//
//  Created by 邓锋 on 16/1/27.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYTeam : NSObject{
    public private(set) var id = 0
    public private(set) var name = ""
    public private(set) var slug = ""
    public private(set) var _description = ""
    public private(set) var privacy = ""
    public private(set) var permission = ""
    
    public static override func mj_replacedKeyFromPropertyName() -> [NSObject : AnyObject]! {
        return ["_description":"description"]
    }
    
    //api
    var url = ""
    var members_url = ""
    var repositories_url = ""
}