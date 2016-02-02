//
//  YYEventRepo.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/2/2.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYEventRepo : NSObject{
    public private(set) var id = 0
    public private(set) var name = ""
    
    //api
    var url = ""
    
    public var repo : Requestable<YYRepository>{
        return Requestable(mothod: .GET, url: self.url.yy_clear)
    }
}