//
//  YYURLHeaderGenerator.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public var RxGitHubUserName = ""
public var RxGitHubPassword = ""



//header when request Auth
func AuthHeader()->[String:String]{
    let access = "\(RxGitHubUserName):\(RxGitHubPassword)".dataUsingEncoding(NSUTF8StringEncoding)?.base64EncodedStringWithOptions(.Encoding64CharacterLineLength) ?? ""
    let authorization = "Basic \(access)"
    return ["Authorization":authorization]
}