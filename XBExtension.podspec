#
# Be sure to run `pod lib lint XBExtension.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "XBExtension"
  s.version          = "0.2.1"
  s.summary          = "A lot of category class, give a short way to make everything easier for development"
  s.description      = <<-DESC
                       A lot of category class, give a short way to make everything easier for development
                       Including:

                       - Open phonecall, promted phonecall, open url in safari.
                       - Shortened HexColor and RGB color with integer value (over 255, not over 1 anymore).

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/EugeneNguyen/XBExtension"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "eugene nguyen" => "xuanbinh91@gmail.com" }
  s.source           = { :git => "https://github.com/EugeneNguyen/XBExtension.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/eugene_nguyen91'

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  # s.resources = 'Pod/Assets/*.png'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AVHexColor'
end
