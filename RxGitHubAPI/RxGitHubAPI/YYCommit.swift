//
//  YYCommit.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYCommit : NSObject{
    public var sha = ""
    public var commit = YYCommitSub()
    public var html_url = ""
    public var author = YYUser()
    public var committer = YYUser()
    public var parents = [YYCommitParent]()
    
    //api
    var url = ""
    var comments_url = ""
    
    public class override func mj_objectClassInArray() -> [NSObject : AnyObject]! {
        return ["parents":YYCommitParent.self]
    }
    
}

public class YYCommitParent : NSObject{
    public var sha = ""
    public var html_url = ""
    
    //api
    var url = ""
}

public class YYCommitSub : NSObject{
    public var author = YYCommitUser()
    public var committer = YYCommitUser()
    public var message = ""
    public var tree = YYTree()
    public var comment_count = 0
    
    //api
    var url = ""
    
}

public class YYCommitUser : NSObject{
    public var name = ""
    public var email = ""
    public var date = ""
}