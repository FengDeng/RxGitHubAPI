//
//  YYRepository.swift
//  RxGitHub
//
//  Created by 邓锋 on 16/1/20.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public class YYRepository : NSObject{
    public var id = 0
    public var owner = YYUser()
    public var name = ""
    public var full_name = ""
    public var _description = ""
    public var _private = false
    public var fork = false
    public var html_url = ""
    public var clone_url = ""
    public var git_url = ""
    public var mirror_url = ""
    public var ssh_url = ""
    public var svn_url = ""
    public var homepage = ""
    public var language = ""
    public var forks_count = 0
    public var stargazers_count = 0
    public var watchers_count = 0
    public var size = 0
    public var default_branch = ""
    public var open_issues_count = 0
    public var has_issues = false
    public var has_downloads = false
    public var has_wiki = false
    public var has_pages = false
    
    public var pushed_at = ""
    public var created_at = ""
    public var updated_at = ""
    
    public var watchers = 0
    public var open_issues = 0
    
    public var permissions = YYPermission()
    
    public var parent : YYRepository?
    public var source : YYRepository?
    
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
    public var admin = false
    public var push = false
    public var pull = false
}

