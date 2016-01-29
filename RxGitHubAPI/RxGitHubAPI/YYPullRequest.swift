//
//  YYPullRequest.swift
//  RxGitHub
//
//  Created by 邓锋 on 16/1/27.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYPullRequest : NSObject{
    public var id = 0
    public var html_url = ""
    public var diff_url = ""
    public var patch_url = ""
    public var number = 0
    public var state = ""
    public var title = ""
    public var body = ""
    
    //public var assignee =
    //public var milestone =
    
    public var locked = false
    public var created_at = ""
    public var updated_at = ""
    public var closed_at = ""
    public var merged_at = ""
    
    public var head_label = ""
    public var head_ref = ""
    public var head_user = YYUser()
    public var head_repo = YYRepository()
    
    public var base_label = ""
    public var base_ref = ""
    public var base_user = YYUser()
    public var base_repo = YYRepository()
    
    public var user = YYUser()
    
    public var merged = false
    public var mergeable = false
    public var mergeable_state = ""
    public var merged_by = ""
    public var comments = 0
    public var review_comments = 0
    public var commits = 0
    public var additons = 0
    public var deletions = 0
    public var changed_files = 0
    
    
    public static override func mj_replacedKeyFromPropertyName() -> [NSObject : AnyObject]! {
        return ["base_label":"base.label","base_ref":"base.ref","base_user":"base.user","base_repo":"base.repo","head_label":"head.label","head_ref":"head.ref","head_user":"head.user","head_repo":"head.repo"]
    }
    
    //api
    
    var issue_url = ""
    var commits_url = ""
    var review_comments_url = ""
    var review_comment_url = ""
    var comments_url = ""
    var statuses_url = ""
    
}