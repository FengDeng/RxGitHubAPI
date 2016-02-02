//
//  YYPullRequest.swift
//  RxGitHub
//
//  Created by 邓锋 on 16/1/27.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYPullRequest : NSObject{
    public private(set) var id = 0
    public private(set) var html_url = ""
    public private(set) var diff_url = ""
    public private(set) var patch_url = ""
    public private(set) var number = 0
    public private(set) var state = ""
    public private(set) var title = ""
    public private(set) var body = ""
    
    //public private(set) var assignee =
    //public private(set) var milestone =
    
    public private(set) var locked = false
    public private(set) var created_at = ""
    public private(set) var updated_at = ""
    public private(set) var closed_at = ""
    public private(set) var merged_at = ""
    
    public private(set) var head_label = ""
    public private(set) var head_ref = ""
    public private(set) var head_user = YYUser()
    public private(set) var head_repo = YYRepository()
    
    public private(set) var base_label = ""
    public private(set) var base_ref = ""
    public private(set) var base_user = YYUser()
    public private(set) var base_repo = YYRepository()
    
    public private(set) var user = YYUser()
    
    public private(set) var merged = false
    public private(set) var mergeable = false
    public private(set) var mergeable_state = ""
    public private(set) var merged_by = ""
    public private(set) var comments = 0
    public private(set) var review_comments = 0
    public private(set) var commits = 0
    public private(set) var additons = 0
    public private(set) var deletions = 0
    public private(set) var changed_files = 0
    
    
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