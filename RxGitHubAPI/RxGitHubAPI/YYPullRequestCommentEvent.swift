//
//  YYPullRequestCommentEvent.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/2/2.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYPullRequestCommentEvent: NSObject {
    public private(set) var action = ""
    public private(set) var comment = YYPullRequestComment()
    public private(set) var pull_request = YYPullRequest()
}
