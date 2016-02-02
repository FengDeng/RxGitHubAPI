//
//  YYIssueCommentEvent.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/2/2.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYIssueCommentEvent : NSObject{
    public private(set) var action = ""
    public private(set) var issue = YYIssue()
    public private(set) var comment = YYIssueComment()
}