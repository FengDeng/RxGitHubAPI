# RxGitHubAPI
a GitHubAPI base Stream by RxSwift

[中文博客](http://fengdeng.github.io/)

[微博私信我](http://weibo.com/FengDeng1219)

#Trending

	RxGitHubAPI.trendRepos(YYSince.Daily, language: "swift").subscribeNext { (repos) -> Void in
    	print(repos)
    }


----------

#Search

users

		RxGitHubAPI.searchUsers("tangqiaoboy").subscribeNext { (searchuser) -> Void in
            print((searchuser))
        }
        
repos 

	RxGitHubAPI.searchRepos("RxSwift").subscribeNext { (searchRepo) -> Void in
            print(searchRepo)
    }
    
    
----------


#YYUser

1. 登录 
		
		RxGitHubUserName = ""
        RxGitHubPassword = ""        
        RxGitHubAPI.yy_user.subscribeNext { (user) -> Void in
            print(user)
        }

2. 获取一个用户

		RxGitHubAPI.yy_user("tangqiaoboy").subscribeNext { (user) -> Void in
            print(user)
        }
 
   
3. follow或者unFollow这个用户

		RxGitHubAPI.yy_user("tangqiaoboy").subscribeNext { (user) -> Void in
            print(user)
            user.action_follow.subscribeNext({ (isSuccess) -> Void in
                if isSuccess{
                    print("follow成功")
                }
            })
            user.action_unFollow.subscribeNext({ (isSuccess) -> Void in
                if isSuccess{
                    print("follow成功")
                }
            })
        }
        
4. 获取这个用户的所有repo
 
 		RxGitHubAPI.yy_user("tangqiaoboy").subscribeNext { (user) -> Void in
            print(user)
            user.yy_repos.subscribeNext({ (repos) -> Void in
                print(repos)
            })
        }
        
5. 获取这个用户following的用户，或者following这个用户的用户

		RxGitHubAPI.yy_user("tangqiaoboy").subscribeNext { (user) -> Void in
            print(user)
            user.yy_followers.subscribeNext({ (users) -> Void in
                print(users)
            })
            user.yy_followings.subscribeNext({ (users) -> Void in
                print(users)
            })
        }
        
6. 获取这个用户Star的repo

		RxGitHubAPI.yy_user("tangqiaoboy").subscribeNext { (user) -> Void in
            print(user)
            user.yy_starred.subscribeNext({ (repos) -> Void in
                print(repos)
            })
        }
        
----------        
        
      
#YYRepository

自己去看接口吧，在`YYRepository+Rx.swift`里面


----------



#Cocoapods

暂时不提供使用，等到功能完善后会支持cocoapods的
