//
//  YYRelease.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYRelease : NSObject{
    public private(set) var upload_url = ""
    public private(set) var html_url = ""
    public private(set) var id = 0
    public private(set) var tag_name = ""
    public private(set) var target_commitish = ""
    public private(set) var name = ""
    public private(set) var draft = false
    public private(set) var author = YYUser()
    public private(set) var prerelease = false
    public private(set) var created_at = ""
    public private(set) var published_at = ""
    public private(set) var assets = [YYAsset]()
    public private(set) var body = ""
    
    
    public class override func mj_objectClassInArray() -> [NSObject : AnyObject]! {
        return ["assets":YYAsset.self]
    }
    
    //api
    var url = ""
    var assets_url = ""
    var tarball_url = ""
    var zipball_url = ""
}