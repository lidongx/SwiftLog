Pod::Spec.new do |s|
  s.name         = "Log"
  s.version      = "1.0.0"
  s.license      = { :type => "MIT" }
  s.homepage     = "https://github.com/lidongx/SwiftLog"
  s.author       = { "Damien" => "damien@delba.io" }
  s.summary      = "An extensible logging framework for Swift"
  s.source       = { :git => "https://github.com/lidongx/SwiftLog.git", :tag => s.version }
  s.swift_version = '5.0'

  s.ios.deployment_target = "15.0"

  s.source_files = "Source/**/*.{swift, h}"

  s.requires_arc = true
end
