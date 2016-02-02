//
//  YYPushEvent.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/2/2.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYPushEvent: NSObject {
    public private(set) var push_id = ""
    public private(set) var size = 0
    public private(set) var distinct_size = 0
    public private(set) var ref = ""
    public private(set) var head = ""
    public private(set) var before = ""
    public private(set) var commits = [YYPushCommit]()
    public private(set) var _public = false
    public private(set) var created_at = ""
}
