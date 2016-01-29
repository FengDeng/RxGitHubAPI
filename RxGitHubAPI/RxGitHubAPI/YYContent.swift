//
//  YYContent.swift
//  RxGitHub
//
//  Created by 邓锋 on 16/1/26.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYContent : NSObject{
    public var type = ""
    public var encoding = ""
    public var size = 0
    public var name = ""
    public var path = ""
    public var content = ""
    public var sha = ""
    public var html_url = ""
    public var download_url = ""
    public var _links = YYLink()
    
    //api
    var url = ""
    var git_url = ""
}

public class YYLink : NSObject{
    public var html = ""
    
    //api 
    var _self = ""
    var git = ""
}