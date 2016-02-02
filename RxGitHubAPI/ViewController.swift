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
        
        RxGitHubAPI.yy_user("fengdeng").subscribe { (user) -> Void in
            switch user{
            case .Next(let user):
                print(user.login)
                
                user.yy_events.subscribeNext({ (events) -> Void in
                    for e in events{
                        print(e)
                    }
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

