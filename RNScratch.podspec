require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name                = "RNScratch"
  s.version             = package["version"]
  s.description         = package["description"]
  s.summary      = package['description']
  s.license      = package['license']
  s.author         = package['author']
  s.homepage       = 'https://github.com/ConduitMobileRND/react-native-scratch'
  s.source         = { :git => 'https://github.com/ConduitMobileRND/react-native-scratch' }

  s.platform            = :ios, "9.0"
  s.source_files  = "ios/**/*.{h,m}"
  s.dependency      'React'
  s.dependency      'React-Core'
end