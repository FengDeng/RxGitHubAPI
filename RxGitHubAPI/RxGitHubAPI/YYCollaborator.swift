//
//  YYCollaborator.swift
//  RxGitHub
//
//  Created by 邓锋 on 16/1/27.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYCollaborator : YYUser{
    
    public var permissions_pull = false
    public var permissions_push = false
    public var permissions_admin = false
    
    public static override func mj_replacedKeyFromPropertyName() -> [NSObject : AnyObject]! {
        return ["permissions_pull":"permissions.pull","permissions_push":"permissions.push","permissions_admin":"permissions.admin"]
    }
    
}