require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "RNPrint"
  s.version      = package["version"]
  s.summary      = package["description"]

  s.homepage     = "https://github.com/debitoor/react-native-print"

  s.license      = "MIT"
  s.authors      = { "Christopher Dro" => "casheghian@gmail.com" }
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/debitoor/react-native-print" }
  s.source_files  = "ios/RNPrint/*.{h,m}"

  s.dependency 'React'
end