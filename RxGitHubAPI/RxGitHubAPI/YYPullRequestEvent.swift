//
//  YYPullRequestEvent.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/2/2.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYPullRequestEvent: NSObject {
    public private(set) var action = ""
    public private(set) var number = 0
    public private(set) var pull_request = YYPullRequest()
}
