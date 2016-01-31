# RxGitHubAPI
a GitHubAPI base Stream by RxSwift

博客地址 <http://fengdeng.github.io/>


#Notice 
###when you send a request that needs Auth

you must set this,you can set it before your first request

	public var RxGitHubUserName = "username"
	public var RxGitHubPassword = "password"

#How get a user

How get a login user

	static func yy_user()->Requestable<YYUser>

How get a nomal user
	
	static func yy_user(username:String)->Requestable<YYUser>
	

#When you get a user

get user's follower users

	user.yy_followers.subscribeNext({ (users) -> Void in
                print(users)
    })

get user's repos
	
	user.yy_repos.subscribeNext({ (repos) -> Void in
                print(repos)
    })
    
and so on ……
 
 
#When you get a repo

star it

	repo.action_star
	
unStar it

	repo.action_unStar
	
check starring it

	repo.action_checkStar
	
and so on ……
 
#List Result

if you get a Pageable<E>,you can get next page like this

	user.yy_repos.nextPage.subscribeNext({ (repos) -> Void in
                print(repos)
    })
    

or this
 
	user.yy_repos.page(2).subscribeNext({ (repos) -> Void in
                print(repos)
    })
    
or you want set per_page

	user.yy_repos.page(2,per_page:10).subscribeNext({ (repos) -> Void in
                print(repos)
    })
    
  