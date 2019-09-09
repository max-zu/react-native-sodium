require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RCTSodium"
  s.version      = package['version']
  s.summary      = "A React Native library for authenticating users with Touch ID"
  s.homepage     = "https://github.com/naoufal/react-native-touch-id"
  s.license      = "MIT"

  s.author         = package['author']
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/max-zu/react-native-sodium" }

  s.source_files  = "/ios/RCTSodium/*.{h,m}"
  s.dependency "React"
end
