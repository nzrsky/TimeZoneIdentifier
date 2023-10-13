Pod::Spec.new do |s|
  s.name         = "TimeZoneIdentifier"
  s.version      = "1.0.0"
  s.summary      = "List of Time Zones Identifiers for Swift"
  s.homepage     = "https://github.com/nzrsky/TimeZoneIdentifier.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Alexey Nazarov" => "alexx.nazaroff@gmail.com" }
  s.social_media_url   = "https://twitter.com/nzrsky"
  s.ios.deployment_target = "12.0"
  s.osx.deployment_target = "10.15"
  s.watchos.deployment_target = "6.0"
  s.tvos.deployment_target = "12.0"
  s.source       = { :git => "https://github.com/nzrsky/TimeZoneIdentifier.git", :tag => s.version.to_s }
  s.source_files = 'Sources/**/*.swift'
  s.frameworks  = "Foundation"
  s.swift_versions = ['5.5']
end
