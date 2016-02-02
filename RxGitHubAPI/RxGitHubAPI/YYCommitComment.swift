//
//  YYCommitComment.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/2/2.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYCommitComment: NSObject {
    public private(set) var id = 0
    public private(set) var commit_id = ""
    public private(set) var position = 0
    public private(set) var line = 0
    public private(set) var path = ""
    public private(set) var html_url = ""
    public private(set) var body = ""
    public private(set) var user = YYUser()
    public private(set) var created_at = ""
    public private(set) var updated_at = ""
    
    
    
    //api
    var url = ""
}
