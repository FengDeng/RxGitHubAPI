//
//  YYRepository+Rx.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/28.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire

extension YYRepository{
    
    /**
     list forks repo
     
     - returns: 
     */
    public var yy_forks : Pageable<[YYRepository]>{
        return Pageable(mothod: .GET, url: self.forks_url.yy_clear)
    }
    
    /**
     list repo collaborator
     
     - returns: 
     */
    public var yy_collaborators : Pageable<[YYCollaborator]>{
        return Pageable(mothod: .GET, url: self.collaborators_url.yy_clear,headers:AuthHeader)
    }
    
    /**
     list teams
     
     - returns: 
     */
    public var yy_teams : Pageable<[YYTeam]>{
        return Pageable(mothod: .GET, url: self.teams_url.yy_clear)
    }
    
    //fix me
    //public var yy_hooks()
    //public var yy_issue_events
    //public var yy_event
    
    /**
    list assignees
    
    - returns: 
    */
    public var yy_assignees : Pageable<[YYUser]>{
        return Pageable(mothod: .GET, url: self.assignees_url.yy_clear)
    }
    
    /**
     list branches
     
     - returns: 
     */
    public var yy_branches : Pageable<[YYBranch]>{
        return Pageable(mothod: .GET, url: self.branches_url.yy_clear)
    }
    
    /**
     list tags
     
     - returns: 
     */
    public var yy_tags : Pageable<[YYTag]>{
        return Pageable(mothod: .GET, url: self.tags_url.yy_clear)
    }
    
    //fix me
    //public var yy_blobs()
    //public var yy_git_tags()
    
    /**
    list git ref
    
    - returns: 
    */
    public var yy_git_refs : Pageable<[YYReference]>{
        return Pageable(mothod: .GET, url: self.git_refs_url.yy_clear)
    }
    
    //fix me
    //public var yy_trees()
    //public var yy_statuses()
    
    /**
    list language
    
    - returns: 
    */
    public var yy_languages : Observable<[String:Int]>{
        return Observable.create { (observer) -> Disposable in
            let request = Alamofire.request(.GET, self.languages_url.yy_clear)
            request.responseJSON(completionHandler: { (response) -> Void in
                //判断Response是否有error
                if let responseError = response.result.error{
                    observer.onError(responseError)
                    return
                }
                
                //判断是否有 result 是否有error
                if let err = response.result.error{
                    observer.onError(err)
                    return
                }
                
                guard let json = response.result.value as? [String:Int] else{
                    observer.onError(YYError.YYUnKnowContent)
                    return
                }
                observer.onNext(json)
            })
            return AnonymousDisposable{
                request.cancel()
            }
        }
    }
    
    /**
     list user that starred this repo
     
     - returns: 
     */
    public var yy_stargazers : Pageable<[YYUser]>{
        return Pageable(mothod: .GET, url: self.stargazers_url.yy_clear)
    }
    
    /**
     list repo contributors 
     
     - returns: 
     */
    public var yy_contributors : Pageable<[YYUser]>{
        return Pageable(mothod: .GET, url: self.contributors_url.yy_clear)
    }
    
    /**
     list repo subscribers
     
     - returns: 
     */
    public var yy_subscribers : Pageable<[YYUser]>{
        return Pageable(mothod: .GET, url: self.subscribers_url.yy_clear)
    }
    
    
    //fix me
    //public var yy_subscription()
    
    
    /**
    list repo commits
    
    - returns: 
    */
    public var yy_commits : Pageable<[YYCommit]>{
        return Pageable(mothod: .GET, url: self.commits_url.yy_clear)
    }
    
    //fix me
    //public var yy_git_commits()
    
    /**
    list repo comments
    
    - returns: 
    */
    public var yy_comments : Pageable<[YYCommitComment]>{
        return Pageable(mothod: .GET, url: self.comments_url.yy_clear)
    }
    
    /**
     list repo issue comments
     
     - returns: 
     */
    public var yy_issue_comments : Pageable<[YYIssueComment]>{
        return Pageable(mothod: .GET, url: self.comments_url.yy_clear)
    }
    
    /**
     list repo contents
     
     - returns: 
     */
    public var yy_contents : Pageable<[YYContent]>{
        return Pageable(mothod: .GET, url: self.comments_url.yy_clear)
    }
    
    //fix me
    //public var yy_compare()
    //public var yy_merges()
    //public var yy_archive()
    //public var yy_downloads()
    
    /**
    list repo issues
    
    - returns: 
    */
    public var yy_issues : Pageable<[YYIssue]>{
        return Pageable(mothod: .GET, url: self.issues_url.yy_clear)
    }
    
    /**
     list repo pull request
     
     - returns: 
     */
    public var yy_pull : Pageable<[YYPullRequest]>{
        return Pageable(mothod: .GET, url: self.pulls_url.yy_clear)
    }
    
    //fix me
    //public var yy_milestones()
    //public var yy_notifications()
    
    
    /**
    list repo labels
    
    - returns: 
    */
    public var yy_labels : Pageable<[YYLabel]>{
        return Pageable(mothod: .GET, url: self.labels_url.yy_clear)
    }
    
    /**
     list repo releases
     
     - returns: 
     */
    public var yy_releases : Pageable<[YYRelease]>{
        return Pageable(mothod: .GET, url: self.releases_url.yy_clear)
    }
    
    
    //fix me
    //public var yy_deployments()
    
    //action needs Auth
    
    /**
    star this repo
    
    - returns: return value description
    */
    public var action_star : Actionable<Bool>{
        return Actionable(mothod: .PUT, url: self.action_star_url.yy_clear,headers:AuthHeader)
    }
    
    /**
     unStar this repo
     
     - returns: return value description
     */
    public var action_unStar : Actionable<Bool>{
        return Actionable(mothod: .DELETE, url: self.action_star_url.yy_clear,headers:AuthHeader)
    }
    
    /**
     check you are starring this repo
     
     - returns:
     */
    public var action_checkStar : Actionable<Bool>{
        return Actionable(mothod: .GET, url: self.action_star_url.yy_clear,headers:AuthHeader)
    }
    
    /**
     watch this repo
     
     - returns: return value description
     */
    public var action_watch : Actionable<Bool>{
        return Actionable(mothod: .PUT, url: self.action_watch_url.yy_clear,headers:AuthHeader)
    }
    
    /**
     unWatch this repo
     
     - returns: return value description
     */
    public var action_unWatch : Actionable<Bool>{
        return Actionable(mothod: .DELETE, url: self.action_watch_url.yy_clear,headers:AuthHeader)
    }
    
    /**
     check you are watching this repo
     
     - returns:
     */
    public var action_checkWatch : Actionable<Bool>{
        return Actionable(mothod: .GET, url: self.action_watch_url.yy_clear,headers:AuthHeader)
    }
    
}