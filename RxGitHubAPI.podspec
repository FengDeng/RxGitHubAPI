Pod::Spec.new do |s|
s.name             = "RxGitHubAPI"
s.version          = "1.0.0"
s.summary          = "a GiuHub API Kit"
s.description      = <<-DESC

a GiuHub API Kit

DESC
s.license = 'MIT'
s.author           = { "邓锋" => "704292743@qq.com" }
s.homepage         = "https://github.com/FengDeng/RxGitHubAPI"
s.source           = { :git => "git@github.com:FengDeng/RxGitHubAPI.git",:tag => s.version}
s.platform     = :ios, '8.0'
s.requires_arc = true

s.source_files = 'RxGitHubAPI/RxGitHubAPI/*.swift'
s.frameworks = 'Foundation','UIKit'

s.dependency 'RxSwift', '~> 2.0.0'
s.dependency 'RxCocoa', '~> 2.0.0'
s.dependency 'RxBlocking', '~> 2.0.0'
s.dependency 'Alamofire', '~> 3.1.4'
s.dependency 'MJExtension'

end
