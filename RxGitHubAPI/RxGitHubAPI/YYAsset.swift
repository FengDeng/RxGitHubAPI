//
//  YYAsset.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYAsset : NSObject {
    public var browser_download_url = ""
    public var id = 0
    public var name = ""
    public var label = ""
    public var state = ""
    public var content_type = ""
    public var size = 0
    public var download_count = 0
    public var created_at = ""
    public var updated_at = ""
    public var uploader = YYUser()
    
    //api
    var url = ""
}