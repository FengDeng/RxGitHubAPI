//
//  String+Extension.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation
extension String{
    var yy_clear : String{
        
        let str = (self as NSString)
        
        var index = str.length
        
        for var i = 0 ;i < str.length;i++ {
            if str.characterAtIndex(i) == ("{" as NSString).characterAtIndex(0){
                index = i
                break
            }
        }
        return (self as NSString).substringToIndex(index)
    }
}