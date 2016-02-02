//
//  YYCommitParent.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/2/2.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYCommitParent: NSObject {
    public private(set) var sha = ""
    public private(set) var html_url = ""
    
    //api
    var url = ""
    
    public var yy_commit : Requestable<YYCommit>{
        return Requestable(mothod: .GET, url: self.url.yy_clear)
    }
}
