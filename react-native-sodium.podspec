require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-sodium"
  s.version      = package['version']
  s.summary      = package['description']
  s.homepage     = "https://github.com/lyubo/react-native-sodium"
  s.license      = "MIT"

  s.author         = package['author']
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/max-zu/react-native-sodium", :tag => "0.3.4" }

  s.source_files  = "ios/RCTSodium/*.{h,m}", "libsodium/libsodium-ios/include/**/*.{h,m}", "libsodium/libsodium-ios/lib/libsodium.a"
  s.dependency "React"
end
