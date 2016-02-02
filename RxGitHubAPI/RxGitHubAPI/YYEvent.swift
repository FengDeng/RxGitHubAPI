//
//  YYEvent.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/2/2.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation

public enum YYEventType{
    case CommitCommentEvent
    case CreateEvent
    case DeleteEvent
    case ForkEvent
    case IssueCommentEvent
    case IssuesEvent
    case MemberEvent
    case PublicEvent
    case PullRequestEvent
    case PullRequestReviewCommentEvent
    case PushEvent
    case WatchEvent
    case NoCompleted
}


public class YYEvent : NSObject{
    public private(set) var id = 0
    public private(set) var actor = YYEventUser()
    public private(set) var repo = YYEventRepo()
    public private(set) var _public = false
    public private(set) var created_at = ""
    var type = ""
    public var _type : YYEventType{
        switch self.type{
        case "CommitCommentEvent":
            return .CommitCommentEvent
        case "CreateEvent":
            return .CreateEvent
        case "DeleteEvent":
            return .DeleteEvent
        case "ForkEvent":
            return .ForkEvent
        case "IssueCommentEvent":
            return .IssueCommentEvent
        case "IssuesEvent":
            return .IssuesEvent
        case "MemberEvent":
            return .MemberEvent
        case "PublicEvent":
            return .PublicEvent
        case "PullRequestEvent":
            return .PullRequestEvent
        case "PullRequestReviewCommentEvent":
            return .PullRequestReviewCommentEvent
        case "PushEvent":
            return .PushEvent
        case "WatchEvent":
            return .WatchEvent
        default:
            return .NoCompleted
        }

    }
    
    public var _payload : NSObject?{
        switch self.type{
        case "CommitCommentEvent":
            return YYCommitCommentEvent.mj_objectWithKeyValues(self.payload)
        case "CreateEvent","DeleteEvent":
            return YYRefEvent.mj_objectWithKeyValues(self.payload)
        case "ForkEvent":
            return YYForkEvent.mj_objectWithKeyValues(self.payload)
        case "IssueCommentEvent":
            return YYIssueCommentEvent.mj_objectWithKeyValues(self.payload)
        case "IssuesEvent":
            return YYIssueEvent.mj_objectWithKeyValues(self.payload)
        case "MemberEvent":
            return YYMemberEvent.mj_objectWithKeyValues(self.payload)
        case "PublicEvent":
            return YYPublicEvent.mj_objectWithKeyValues(self.payload)
        case "PullRequestEvent":
            return YYPullRequestEvent.mj_objectWithKeyValues(self.payload)
        case "PullRequestReviewCommentEvent":
            return YYPullRequestCommentEvent.mj_objectWithKeyValues(self.payload)
        case "PushEvent":
            return YYPushEvent.mj_objectWithKeyValues(self.payload)
        case "WatchEvent":
            return YYWatchEvent.mj_objectWithKeyValues(self.payload)
        default:
            return "此payload还未添加解析方案"
        }
    }
    
    //因为类型不同，所以先解析成字典，然后根据self.type解析成相应的对象
    var payload = NSDictionary()
    
    public class override func mj_replacedKeyFromPropertyName() -> [NSObject : AnyObject]! {
        return ["_public":"public"]
    }
    
}
