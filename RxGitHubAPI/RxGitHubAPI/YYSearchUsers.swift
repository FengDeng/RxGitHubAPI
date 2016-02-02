//
//  YYSearchUser.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/29.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYSearchUsers : NSObject{
    public private(set) var total_count = 0
    public private(set) var incomplete_results = false
    public private(set) var items = [YYUser]()
    
    public class override func mj_objectClassInArray() -> [NSObject : AnyObject]! {
        return ["items":YYUser.self]
    }
}