//
//  YYcomment.swift
//  RxGitHub
//
//  Created by 邓锋 on 16/1/26.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYComment : NSObject{
    public var id = 0
    public var commit_id = ""
    public var position = 0
    public var line = 0
    public var path = ""
    public var html_url = ""
    public var body = ""
    public var user = YYUser()
    public var created_at = ""
    public var updated_at = ""
    
   
    
    //api
    var url = ""
    
    //when issue comment
    var issue_url = ""
    
}