//
//  YYIssue.swift
//  RxGitHub
//
//  Created by 邓锋 on 16/1/26.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYIssue : NSObject{
    public var id = 0
    public var html_url = ""
    public var title = ""
    public var user = YYUser()
    public var state = ""
    public var created_at = ""
    public var updated_at = ""
    public var closed_at = ""
    public var body = ""
    public var comments = 0
    public var locked = false
    public var closed_by = ""
    public var number = 0
    
    public var assignee = YYUser()
    public var pull_request = YYIssuePullRequest()
    public var labels = [YYLabel]()
    
    //api
    var url = ""
    var labels_url = ""
    var comments_url = ""
    var events_url = ""
    
}

public class YYIssuePullRequest :  NSObject{
    public var html_url = ""
    public var diff_url = ""
    public var patch_url = ""
    
    //api
    var url = ""
    
}


public class YYLabel : NSObject{
    public var name = ""
    public var color = ""
    
    //api
    var url = ""
}