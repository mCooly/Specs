#
# Be sure to run `pod lib lint Passer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Passer'
  s.version          = '0.2.1'
  s.summary          = 'mCooly Studio Private iOS Library'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Although the house sparrow is small, but be fullies equipped.
                       DESC

  s.homepage         = 'https://github.com/mCooly/Passer-iOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'WeiXuG' => 'weixug@mcooly.com' }
  s.source           = { :git => 'https://github.com/mCooly/Passer-iOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/mCooly'
  
  s.frameworks = 'Foundation'
  
  s.default_subspec = "Core"

  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'

  # BLL层(主要模块)
  s.subspec "Core" do |ss|
    ss.dependency 'Passer/MCL-UserCenter-Module'
  end
  
  # BLL层(用户中心)
  s.subspec "MCL-UserCenter-Module" do |ss|
    s.source_files = 'Passer/Classes/Module/UserCenter/**/*'

    ss.dependency 'MCL-Network-Component', '~> 0.1.0'
    ss.dependency 'MCL-Database-Component', '~> 0.1.2'
  end
  
  # 测试库
  s.subspec "Test" do |ss|
    ss.dependency 'Quick', '~> 3.1.2'
    ss.dependency 'Nimble', '~> 9.0.0'
  end
  
end
