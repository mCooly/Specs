#
# Be sure to run `pod lib lint Passer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Passer'
  s.version          = '0.1.2'
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
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.default_subspec = "DAL"

  s.ios.deployment_target = '10.0'
  
  s.swift_version = '5.0'

  s.subspec "DAL" do |ss|
      ss.dependency "Passer/Network"
      ss.dependency "Passer/Database"
  end
  
  s.subspec "Network" do |ss|
#    ss.source_files = 'Passer/Classes/Network/**/*'
    ss.dependency 'Alamofire', '~> 5.4.1'
  end
  
  s.subspec "Database" do |ss|
#    ss.source_files = 'Passer/Classes/Database/**/*'
    ss.dependency 'RealmSwift', '~> 10.7.2'
  end
  
  s.subspec "UI" do |ss|
#    ss.source_files = 'Passer/Classes/UI/**/*'
    ss.dependency 'SnapKit', '~> 5.0.1'
    ss.dependency 'Kingfisher', '~> 6.2.1'
  end
  
  s.subspec "Test" do |ss|
    ss.dependency 'Quick', '~> 3.1.2'
    ss.dependency 'Nimble', '~> 9.0.0'
  end
  
end
