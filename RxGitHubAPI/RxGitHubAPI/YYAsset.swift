//
//  YYAsset.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYAsset : NSObject {
    public private(set) var browser_download_url = ""
    public private(set) var id = 0
    public private(set) var name = ""
    public private(set) var label = ""
    public private(set) var state = ""
    public private(set) var content_type = ""
    public private(set) var size = 0
    public private(set) var download_count = 0
    public private(set) var created_at = ""
    public private(set) var updated_at = ""
    public private(set) var uploader = YYUser()
    
    //api
    var url = ""
}