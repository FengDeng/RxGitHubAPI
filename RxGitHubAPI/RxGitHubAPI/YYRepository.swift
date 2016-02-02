//
//  YYRepository.swift
//  RxGitHub
//
//  Created by 邓锋 on 16/1/20.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYRepository : NSObject{
    public private(set) var id = 0
    public private(set) var owner = YYUser()
    public private(set) var name = ""
    public private(set) var full_name = ""
    public private(set) var _description = ""
    public private(set) var _private = false
    public private(set) var fork = false
    public private(set) var html_url = ""
    public private(set) var clone_url = ""
    public private(set) var git_url = ""
    public private(set) var mirror_url = ""
    public private(set) var ssh_url = ""
    public private(set) var svn_url = ""
    public private(set) var homepage = ""
    public private(set) var language = ""
    public private(set) var forks_count = 0
    public private(set) var stargazers_count = 0
    public private(set) var watchers_count = 0
    public private(set) var size = 0
    public private(set) var default_branch = ""
    public private(set) var open_issues_count = 0
    public private(set) var has_issues = false
    public private(set) var has_downloads = false
    public private(set) var has_wiki = false
    public private(set) var has_pages = false
    
    public private(set) var pushed_at = ""
    public private(set) var created_at = ""
    public private(set) var updated_at = ""
    
    public private(set) var watchers = 0
    public private(set) var open_issues = 0
    
    public private(set) var permissions = YYPermission()
    
    public private(set) var parent : YYRepository?
    public private(set) var source : YYRepository?
    
    public override static func mj_replacedKeyFromPropertyName() -> [NSObject : AnyObject]! {
        return ["_description":"description","_private":"private"]
    }
    
    //api
    var url = ""
    var archive_url = ""
    var assignees_url = ""
    var blobs_url = ""
    var branches_url = ""
    var collaborators_url = ""
    var comments_url = ""
    var commits_url = ""
    var compare_url = ""
    var contents_url = ""
    var contributors_url = ""
    var deployments_url = ""
    var downloads_url = ""
    var events_url = ""
    var forks_url = ""
    var git_commits_url = ""
    var git_refs_url = ""
    var git_tags_url = ""
    var hooks_url = ""
    var issue_comment_url = ""
    var issue_events_url = ""
    var issues_url = ""
    var keys_url = ""
    var labels_url = ""
    var languages_url = ""
    var merges_url = ""
    var milestones_url = ""
    var notifications_url = ""
    var pulls_url = ""
    var releases_url = ""
    var stargazers_url = ""
    var statuses_url = ""
    var subscribers_url = ""
    var subscription_url = ""
    var tags_url = ""
    var teams_url = ""
    var trees_url = ""
    
    //combination api
    var action_star_url : String{
        get{
            return domain + "/user/starred/\(self.full_name)"
        }
    }
    var action_watch_url : String{
        get{
            return domain + "/user/subscriptions/\(self.full_name)"
        }
    }
    
}

public class YYPermission : NSObject{
    public private(set) var admin = false
    public private(set) var push = false
    public private(set) var pull = false
}

