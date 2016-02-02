//
//  YYIssue.swift
//  RxGitHub
//
//  Created by 邓锋 on 16/1/26.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYIssue : NSObject{
    public private(set) var id = 0
    public private(set) var html_url = ""
    public private(set) var title = ""
    public private(set) var user = YYUser()
    public private(set) var state = ""
    public private(set) var created_at = ""
    public private(set) var updated_at = ""
    public private(set) var closed_at = ""
    public private(set) var body = ""
    public private(set) var comments = 0
    public private(set) var locked = false
    public private(set) var closed_by = ""
    public private(set) var number = 0
    
    public private(set) var assignee = YYUser()
    public private(set) var pull_request = YYIssuePullRequest()
    public private(set) var labels = [YYLabel]()
    
    //api
    var url = ""
    var labels_url = ""
    var comments_url = ""
    var events_url = ""
    
}

public class YYIssuePullRequest :  NSObject{
    public private(set) var html_url = ""
    public private(set) var diff_url = ""
    public private(set) var patch_url = ""
    
    //api
    var url = ""
    
}


public class YYLabel : NSObject{
    public private(set) var name = ""
    public private(set) var color = ""
    
    //api
    var url = ""
}