//
//  YYCommit.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYCommit : NSObject{
    public private(set) var sha = ""
    public private(set) var commit = YYCommitDetail()
    public private(set) var html_url = ""
    public private(set) var author : YYUser?
    public private(set) var committer : YYUser?
    public private(set) var parents : [YYCommitParent]?
    public private(set) var stats_total = 0
    public private(set) var stats_additions = 0
    public private(set) var stats_deletions = 0
    public private(set) var files : YYFile?
    
    //api
    var url = ""
    var comments_url = ""
    
    public class override func mj_objectClassInArray() -> [NSObject : AnyObject]! {
        return ["parents":YYCommitParent.self,"files":YYFile.self]
    }
    public class override func mj_replacedKeyFromPropertyName() -> [NSObject : AnyObject]! {
        return ["stats_total":"stats.total","stats_additions":"stats.additions","stats_deletions":"stats.deletions"]
    }
    
}


