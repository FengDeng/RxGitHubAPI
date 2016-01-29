//
//  YYSearchUser.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/29.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYSearchUsers : NSObject{
    public var total_count = 0
    public var incomplete_results = false
    public var items = [YYUser]()
    
    public class override func mj_objectClassInArray() -> [NSObject : AnyObject]! {
        return ["items":YYUser.self]
    }
}