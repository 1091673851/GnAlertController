Pod::Spec.new do |s|

s.name         = "GnAlertController"
s.version      = "0.0.1"
s.summary      = "iOS弹出控件"

s.homepage     = "https://github.com/1091673851/GnAlertController"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "Gn_chen" => "1091673851@qq.com" }

s.platform     = :ios, "9.0"

s.source       = { :git => "https://github.com/1091673851/GnAlertController.git", :tag => "#{s.version}" }

s.requires_arc = true

s.dependency 'TYAlertController', '~> 1.2.0'

s.frameworks = 'UIKit'

# s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
end
