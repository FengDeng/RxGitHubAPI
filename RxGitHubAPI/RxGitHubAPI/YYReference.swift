//
//  YYReference.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYReference : NSObject{
    public var ref = ""
    public var object_sha = ""
    public var object_type = ""
    
    public static override func mj_replacedKeyFromPropertyName() -> [NSObject : AnyObject]! {
        return ["object_sha":"object.sha","object_type":"object.type","object_url":"object.url"]
    }
    
    //api
    var url = ""
    var object_url = ""
}