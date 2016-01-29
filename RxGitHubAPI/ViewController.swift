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
        
        //        RxGitHubAPI.yy_user("FengDeng",password: "yuanyuan00").subscribe { (event) -> Void in
        //            switch event{
        //            case .Next(let e):
        //                print(e.login)
        //            case .Completed:
        //                print("com")
        //            case .Error(let e):
        //                print("error")
        //            }
        //        }.addDisposableTo(dis)
        
        
        //let aa =  Requestable<YYUser>.init(mothod: .GET, url: "https://api.github.com/users/fengdeng")
        
        RxGitHubAPI.yy_user("Alamofire").subscribeNext { (user) -> Void in
            print(user.login)
            let o = user.yy_repos()
            let m = o.subscribe { (event) -> Void in
                switch event{
                case.Next(let e):
                    print(e.count)
                    for n in e{
                        print(n.full_name)
                    }
                    e[0].action_checkStar().subscribeError({ (err) -> Void in
                        print(err)
                    })
                case.Completed:
                    print("completed")
                case .Error(let e):
                    print(e)
                }
            }
            
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

