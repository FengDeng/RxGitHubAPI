//
//  ViewController.swift
//  RxGitHubAPI
//
//  Created by 邓锋 on 16/1/27.
//  Copyright © 2016年 fengdeng. All rights reserved.
//

import UIKit
import RxSwift
import Alamofire

class ViewController: UIViewController {
    
    let dis = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        RxGitHubAPI.yy_user("tangqiaoboy").subscribe { (user) -> Void in
            switch user{
            case .Next(let user):
                print(user.login)
                //获取到了tangqiao用户
                //获取这个用户的所有公开仓库
                user.yy_repos.page(2, per_page: 1).subscribeNext({ (repos) -> Void in
                    repos[0].action_star.subscribeNext({ (isSuccess) -> Void in
                        if isSuccess{
                            print("您关注成功啦！")
                        }
                    })
                })
            case.Completed:
                print("completed")
            case .Error:
                print("error")
            }
        }

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

