//
//  YYURLGenerator.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

let domain = "https://api.github.com"


//User
//Get a single user
func userURL(username:String)->String{
    return domain + "/users/\(username)"
}