//
//  YYRefEvent.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/2/2.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYRefEvent : NSObject{
    public var ref = ""
    public var ref_type = ""
    public var master_branch = ""
    public var _description = ""
    public var pusher_type = ""
    
    public static override func mj_replacedKeyFromPropertyName() -> [NSObject : AnyObject]! {
        return ["_description":"description"]
    }
}