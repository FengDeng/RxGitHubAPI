//
//  YYFile.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/2/2.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYFile : NSObject{
    public private(set) var sha = ""
    public private(set) var filename = ""
    public private(set) var status = ""
    public private(set) var additions = 0
    public private(set) var deletions = 0
    public private(set) var changes = 0
    public private(set) var blob_url = ""
    public private(set) var raw_url = ""
    public private(set) var patch = ""
    //api
    var contents_url = ""

}