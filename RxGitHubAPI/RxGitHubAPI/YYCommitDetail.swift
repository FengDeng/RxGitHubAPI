//
//  YYCommitDetail.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/2/2.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYCommitDetail: NSObject {
    public private(set) var author = YYCommitUser()
    public private(set) var committer = YYCommitUser()
    public private(set) var message = ""
    public private(set) var tree = YYTree()
    public private(set) var comment_count = 0
    
    //api
    var url = ""
}
