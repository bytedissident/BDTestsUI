#
# Be sure to run `pod lib lint BDTestsUI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BDTestsUI'
  s.version          = '0.0.1'
  s.summary          = 'BDTestsUI is a companion framework to BDTests. Its objective is to simplify and help clarify UI testing in Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'BDTestsUI is a companion framework to BDTests. Its objective is to simplify and help clarify UI testing in Swift.'

  s.homepage         = 'https://github.com/bytedissident/BDTestsUI'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bytedissident' => 'dbronston@me.com' }
  s.source           = { :git => 'https://github.com/bytedissident/BDTestsUI.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'BDTestsUI/Classes/**/*'
  
  # s.resource_bundles = {
  #   'BDTestsUI' => ['BDTestsUI/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'XCTest'
  #s.dependency  'BDTests'
end
