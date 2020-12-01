
Pod::Spec.new do |s|
  s.name             = 'WheelPicker'
  s.version          = '1.0.1'
  s.summary          = 'A simple yet customizable horizontal and vertical picker view. Works on iOS 9 and higher'
  s.description      = 'Here is an easy-to-customize picker, where you can choose the reaction it rolls in, display pictures or text + there are 2 picker styles to choose from - 3D and Flat '

  s.social_media_url = 'https://twitter.com/TheMindStudios'
  s.homepage         = 'https://github.com/TheMindStudios/WheelPicker'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hapichdima' => 'hapich@themindstudios.com' }
  s.source           = { :git => 'https://github.com/TheMindStudios/WheelPicker.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'WheelPicker/Classes/**/*'

end
