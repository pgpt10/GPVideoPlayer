#
# Be sure to run `pod lib lint GPVideoPlayer.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GPVideoPlayer'
  s.version          = '1.0.2'
  s.summary      = "A video player with custom playback controls"
  s.description      = <<-DESC
A video player with custom playback controls
                       DESC

  s.homepage         = 'https://github.com/pgpt10/GPVideoPlayer'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.platform     	= :ios, "10.0"
  s.author           = { 'Payal Gupta' => 'p.gpt10@gmail.com' }
  s.source           = { :git => 'https://github.com/pgpt10/GPVideoPlayer.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.source_files = 'GPVideoPlayer/Classes/**/*'
  
  s.resource_bundles = {
    'GPVideoPlayer' => ['GPVideoPlayer/Assets/*.xcassets']
  }

end
