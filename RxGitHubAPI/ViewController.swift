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
        
       
        RxGitHubAPI.searchRepos("RxSwift").subscribeNext { (searchRepo) -> Void in
            print(searchRepo)
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

