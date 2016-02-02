//
//  YYContent.swift
//  RxGitHub
//
//  Created by 邓锋 on 16/1/26.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYContent : NSObject{
    public private(set) var type = ""
    public private(set) var encoding = ""
    public private(set) var size = 0
    public private(set) var name = ""
    public private(set) var path = ""
    public private(set) var content = ""
    public private(set) var sha = ""
    public private(set) var html_url = ""
    public private(set) var download_url = ""
    public private(set) var _links = YYLink()
    
    //api
    var url = ""
    var git_url = ""
}

public class YYLink : NSObject{
    public private(set) var html = ""
    
    //api 
    var _self = ""
    var git = ""
}