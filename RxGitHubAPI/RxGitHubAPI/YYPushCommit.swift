//
//  YYPushCommit.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/2/2.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYPushCommit : NSObject{
    public private(set) var sha = ""
    public private(set) var author_email = ""
    public private(set) var author_name = ""
    public private(set) var message = ""
    public private(set) var distinct = false
    
    //api
    var url = ""
}
