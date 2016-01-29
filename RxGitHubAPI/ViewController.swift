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
        
        RxGitHubAPI.yy_user.subscribeNext { (user) -> Void in
            print(user.login)
            user.yy_repos.nextPage.subscribe({ (event) -> Void in
                switch event{
                case .Completed:
                    print("com")
                case .Next(let e):
                    print(e)
                case .Error(let e):
                    print(e)
                }
            })
        }

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

