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
        
        RxGitHubAPI.searchUsers("Swift").subscribe { (event) -> Void in
            switch event{
            case .Next(let repoR):
                for obj in repoR.items{
                    print(obj.login)
                }
            case .Error(let e):
                print(e)
                
            case.Completed:
                print("compelted")
            }
        }

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

