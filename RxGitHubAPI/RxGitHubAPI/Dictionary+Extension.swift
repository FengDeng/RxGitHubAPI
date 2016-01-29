//
//  Dictionary+Extension.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation
extension Dictionary{
    public func union(other: Dictionary?) -> Dictionary {
        guard let other = other else{
            return self
        }
        var temp = self
        for (key,value) in other {
            temp.updateValue(value, forKey:key)
        }
        return temp
    }
}