//
//  YYRelease.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYRelease : NSObject{
    public var upload_url = ""
    public var html_url = ""
    public var id = 0
    public var tag_name = ""
    public var target_commitish = ""
    public var name = ""
    public var draft = false
    public var author = YYUser()
    public var prerelease = false
    public var created_at = ""
    public var published_at = ""
    public var assets = [YYAsset]()
    public var body = ""
    
    
    public class override func mj_objectClassInArray() -> [NSObject : AnyObject]! {
        return ["assets":YYAsset.self]
    }
    
    //api
    var url = ""
    var assets_url = ""
    var tarball_url = ""
    var zipball_url = ""
}