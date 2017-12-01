#
# Be sure to run `pod lib lint STNetworks.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'STNetworks'
  s.version          = '0.1.3'
  s.summary          = 'A exercise of STNetworks.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zhangxiaoshan618/STNetworks'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangxiaoshan618' => 'zhangxs@startimes.com.cn' }
  s.source           = { :git => 'https://github.com/zhangxiaoshan618/STNetworks.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.subspec 'Base' do |b|
    b.source_files = 'STNetworks/*.swift', 'STNetworks/Base/Classes/*.swift'
    b.resource_bundles = {
        'Base' => ['STNetworks/Base/Assets/Images.xcassets']
    }
  end

  s.subspec 'Category' do |b|
    b.source_files = 'STNetworks/Category/Classes/*.swift'
    b.resource_bundles = {
        'Category' => ['STNetworks/Category/Assets/Images.xcassets']
    }
  end

  s.subspec 'Tool' do |b|
    b.source_files = 'STNetworks/*.swift', 'STNetworks/Tool/Classes/*.swift'
  end

  #s.source_files = 'STNetworks/Classes/**/*'
  
  # s.resource_bundles = {
  #   'STNetworks' => ['STNetworks/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'Networks', '~> 0.1.1'
end
