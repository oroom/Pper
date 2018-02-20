Pod::Spec.new do |s|
  s.name             = 'pper'
  s.version          = '0.1.0'
  s.summary          = 'Pper is a swift permissions abstraction layer with optional plugginable pre request UI.'
  s.homepage         = 'https://github.com/oroom/Pper'
  s.license          = { :type => 'MIT', :file => 'LICENSE'}
  s.author           = { 'Dzmitry Navak' => 'navakdzmitry@gmail.com' }
  s.source           = { :git => 'https://github.com/oroom/Pper.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.swift_version    = '4.0'
  s.source_files = 'code/sources/core/**/*', 'code/sources/permissions/**/*'
  s.exclude_files = 'Example/*'

  s.subspec 'core' do |ss|
    ss.source_files = 'code/sources/core/**/*.swift'
  end

  s.subspec 'location' do |ss|
    ss.dependency 'pper/core'
    ss.source_files = 'code/sources/permissions/location.swift'
    ss.frameworks = 'CoreLocation'
  end

  s.subspec 'camera' do |ss|
    ss.dependency 'arek/Core'
    ss.source_files = 'code/sources/permissions/camera.swift'
    ss.frameworks = 'AVFoundation'
  end

end
