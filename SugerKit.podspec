#
# Be sure to run `pod lib lint SugerKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SugerKit'
  s.version          = '0.1.0'
  s.summary          = '个人开发的快捷操作方法'

  s.homepage         = 'https://github.com/lxm1799/SugerKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lxm1799' => 'goodlucky1130@163.com' }
  s.source           = { :git => 'https://github.com/lxm1799/SugerKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'
  #s.source_files = 'SugerKit/Classes/Cocoa/**/*.swift','SugerKit/Classes/Tool/*.swift'
  #s.default_subspecs = 'Cocoa','Tool'
  
  # ---------------  Cocoa常用扩展  -----------
  
  # Foundation
  s.subspec 'Foundation' do |ss|
      ss.source_files = 'SugerKit/Classes/Foundation/*.swift'
      ss.frameworks = 'UIKit', 'Foundation'
  end
  
  # UIKit
  s.subspec 'UIKit' do |ss|
      ss.source_files = 'SugerKit/Classes/UIKit/*.swift'
      ss.frameworks = 'UIKit', 'Foundation'
  end
  
  
  # ---------------  工具库  -----------
  s.subspec 'Tool' do |ss|
      ss.source_files = 'SugerKit/Classes/Tool/*.swift'
      ss.frameworks = 'UIKit', 'Foundation'
  end
  
  
  
  # s.resource_bundles = {
  #   'SugerKit' => ['SugerKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
