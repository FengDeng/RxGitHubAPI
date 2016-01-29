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
    func yy_forks()->Pageable<[YYRepository]>{
        return Pageable(mothod: .GET, url: self.forks_url.yy_clear())
    }
    
    /**
     list repo collaborator
     
     - returns: 
     */
    func yy_collaborators()->Pageable<[YYCollaborator]>{
        return Pageable(mothod: .GET, url: self.collaborators_url.yy_clear(),headers:AuthHeader())
    }
    
    /**
     list teams
     
     - returns: 
     */
    func yy_teams()->Pageable<[YYTeam]>{
        return Pageable(mothod: .GET, url: self.teams_url.yy_clear())
    }
    
    //fix me
    //func yy_hooks()
    //func yy_issue_events
    //func yy_event
    
    /**
    list assignees
    
    - returns: 
    */
    func yy_assignees()->Pageable<[YYUser]>{
        return Pageable(mothod: .GET, url: self.assignees_url.yy_clear())
    }
    
    /**
     list branches
     
     - returns: 
     */
    func yy_branches()->Pageable<[YYBranch]>{
        return Pageable(mothod: .GET, url: self.branches_url.yy_clear())
    }
    
    /**
     list tags
     
     - returns: 
     */
    func yy_tags()->Pageable<[YYTag]>{
        return Pageable(mothod: .GET, url: self.tags_url.yy_clear())
    }
    
    //fix me
    //func yy_blobs()
    //func yy_git_tags()
    
    /**
    list git ref
    
    - returns: 
    */
    func yy_git_refs()->Pageable<[YYReference]>{
        return Pageable(mothod: .GET, url: self.git_refs_url.yy_clear())
    }
    
    //fix me
    //func yy_trees()
    //func yy_statuses()
    
    /**
    list language
    
    - returns: 
    */
    func yy_languages()->Observable<[String:Int]>{
        return Observable.create { (observer) -> Disposable in
            let request = Alamofire.request(.GET, self.languages_url.yy_clear())
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
    func yy_stargazers()->Pageable<[YYUser]>{
        return Pageable(mothod: .GET, url: self.stargazers_url.yy_clear())
    }
    
    /**
     list repo contributors 
     
     - returns: 
     */
    func yy_contributors()->Pageable<[YYUser]>{
        return Pageable(mothod: .GET, url: self.contributors_url.yy_clear())
    }
    
    /**
     list repo subscribers
     
     - returns: 
     */
    func yy_subscribers()->Pageable<[YYUser]>{
        return Pageable(mothod: .GET, url: self.subscribers_url.yy_clear())
    }
    
    
    //fix me
    //func yy_subscription()
    
    
    /**
    list repo commits
    
    - returns: 
    */
    func yy_commits()->Pageable<[YYCommit]>{
        return Pageable(mothod: .GET, url: self.commits_url.yy_clear())
    }
    
    //fix me
    //func yy_git_commits()
    
    /**
    list repo comments
    
    - returns: 
    */
    func yy_comments()->Pageable<[YYComment]>{
        return Pageable(mothod: .GET, url: self.comments_url.yy_clear())
    }
    
    /**
     list repo issue comments
     
     - returns: 
     */
    func yy_issue_comments()->Pageable<[YYComment]>{
        return Pageable(mothod: .GET, url: self.comments_url.yy_clear())
    }
    
    /**
     list repo contents
     
     - returns: 
     */
    func yy_contents()->Pageable<[YYContent]>{
        return Pageable(mothod: .GET, url: self.comments_url.yy_clear())
    }
    
    //fix me
    //func yy_compare()
    //func yy_merges()
    //func yy_archive()
    //func yy_downloads()
    
    /**
    list repo issues
    
    - returns: 
    */
    func yy_issues()->Pageable<[YYIssue]>{
        return Pageable(mothod: .GET, url: self.issues_url.yy_clear())
    }
    
    /**
     list repo pull request
     
     - returns: 
     */
    func yy_pull()->Pageable<[YYPullRequest]>{
        return Pageable(mothod: .GET, url: self.pulls_url.yy_clear())
    }
    
    //fix me
    //func yy_milestones()
    //func yy_notifications()
    
    
    /**
    list repo labels
    
    - returns: 
    */
    func yy_labels()->Pageable<[YYLabel]>{
        return Pageable(mothod: .GET, url: self.labels_url.yy_clear())
    }
    
    /**
     list repo releases
     
     - returns: 
     */
    func yy_releases()->Pageable<[YYRelease]>{
        return Pageable(mothod: .GET, url: self.releases_url.yy_clear())
    }
    
    
    //fix me
    //func yy_deployments()
    
    //action needs Auth
    
    /**
    star this repo
    
    - returns: return value description
    */
    func action_star()->Actionable<Bool>{
        return Actionable(mothod: .PUT, url: self.action_star_url.yy_clear(),headers:AuthHeader())
    }
    
    /**
     unStar this repo
     
     - returns: return value description
     */
    func action_unStar()->Actionable<Bool>{
        return Actionable(mothod: .DELETE, url: self.action_star_url.yy_clear(),headers:AuthHeader())
    }
    
    /**
     check you are starring this repo
     
     - returns:
     */
    func action_checkStar()->Actionable<Bool>{
        return Actionable(mothod: .GET, url: self.action_star_url.yy_clear(),headers:AuthHeader())
    }
    
    /**
     watch this repo
     
     - returns: return value description
     */
    func action_watch()->Actionable<Bool>{
        return Actionable(mothod: .PUT, url: self.action_watch_url.yy_clear(),headers:AuthHeader())
    }
    
    /**
     unWatch this repo
     
     - returns: return value description
     */
    func action_unWatch()->Actionable<Bool>{
        return Actionable(mothod: .DELETE, url: self.action_watch_url.yy_clear(),headers:AuthHeader())
    }
    
    /**
     check you are watching this repo
     
     - returns:
     */
    func action_checkWatch()->Actionable<Bool>{
        return Actionable(mothod: .GET, url: self.action_watch_url.yy_clear(),headers:AuthHeader())
    }
    
}