#
# Be sure to run `pod lib lint SwiftyLocalKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#
# 1. new code update github
# 2. local not code : pod repo add SwiftyLocalKit  https://github.com/DanielZSY/SwiftyLocalKit.git
#    local uodate code: cd ~/.cocoapods/repos/SwiftyLocalKit. Then execute: pod repo update SwiftyLocalKit
# 3. pod repo push SwiftyLocalKit SwiftyLocalKit.podspec --allow-warnings --sources='https://github.com/CocoaPods/Specs.git'
# 4. pod trunk push SwiftyLocalKit.podspec --allow-warnings
# 5. pod install or pod update on you project execute

Pod::Spec.new do |s|
  s.name             = 'SwiftyLocalKit'
  s.version          = '0.0.6'
  s.summary          = 'SwiftyLocalKit'
  s.module_name      = 'SwiftyLocalKit'
  
  s.homepage         = 'https://github.com/DanielZSY/SwiftyLocalKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'DanielZSY' => 'danielzsy@126.com' }
  s.source           = { :git => 'https://github.com/DanielZSY/SwiftyLocalKit.git', :tag => s.version.to_s }
  
  s.platform              = :ios, '10.0'
  s.swift_versions        = "5"
  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig   = { 'SWIFT_VERSION' => '5.0' }
  
  s.frameworks    = 'UIKit'
  s.libraries     = 'z', 'sqlite3', 'c++'
  s.source_files  = 'SwiftyLocalKit/**/*.{swift,h,m}'
  
  s.dependency 'SwiftDate'
  s.dependency 'HandyJSON'
  s.dependency 'Kingfisher'
  s.dependency 'GRDB.swift'
  s.dependency 'BFKit-Swift'
  s.dependency 'CryptoSwift'
end
