//
//  YYPushCommit+Rx.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/2/2.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

extension YYPushCommit{
    //获取详细的commit
    public var yy_commit : Requestable<YYCommit>{
        return Requestable(mothod: .GET, url: self.url.yy_clear)
    }
}