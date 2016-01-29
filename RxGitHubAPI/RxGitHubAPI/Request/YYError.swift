//
//  Alamofire+Rx.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/27.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import Foundation
import Alamofire
import RxSwift
import MJExtension

enum YYError : ErrorType {
    case YYNoStatuCode
    case YYUnKnowStatuCode(status:Int?,message:String?)
    case YYCouldNotMakeObjectError(status:Int?,message:String?)
    case YYCouldNotMakeObjectArrayError(status:Int?,message:String?)
    case YYUnKnowContent
    case YYGitHubErrorJSON(message:String)
}

