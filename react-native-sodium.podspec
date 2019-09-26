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
  s.source       = { :git => "https://github.com/max-zu/react-native-sodium", :tag => "{s.version}" }
  s.source_files  = ["ios/**/*.{h,m}","libsodium/libsodium-ios/**/*.{h,m}"]

  s.vendored_libraries = 'libsodium/libsodium-ios/lib/libsodium.a'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/Headers/Public/#{s.name}/**'}

  s.dependency 'React'
end
