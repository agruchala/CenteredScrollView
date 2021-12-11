Pod::Spec.new do |s|
  s.name             = 'CenteredScrollView'
  s.version          = '1.0.0'
  s.summary          = 'SwiftUI scroll view that centeres its content when it fits on screen.'
  s.description      = <<-DESC
  SwiftUI scroll view that centeres its content when it fits on screen.
  It uses VStack internally to hold content.
                       DESC
  s.swift_version   = '5.3'
  s.homepage         = 'https://github.com/agruchala/CenteredScrollView'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Artur Gruchała' => 'gruchala.a@gmail.com' }
  s.source           = { :git => 'https://github.com/agruchala/CenteredScrollView.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/GruchalaArtur'

  s.ios.deployment_target = '13.0'
  s.osx.deployment_target = '11.0'

  s.source_files = 'CenteredScrollView/Classes/**/*'
end
