#
# Be sure to run `pod lib lint WheelPicker.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WheelPicker'
  s.version          = '1.0.0'
  s.summary          = 'COOL WheelPicker'
  s.description      = 'Vertical & Horizontal Picker'

  s.social_media_url = 'https://twitter.com/TheMindStudios'
  s.homepage         = 'https://github.com/TheMindStudios/WheelPicker'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hapichdima' => 'hapich@themindstudios.com' }
  s.source           = { :git => 'https://github.com/TheMindStudios/WheelPicker.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'WheelPicker/Classes/**/*'

end
