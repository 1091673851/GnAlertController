Pod::Spec.new do |s|

s.name         = "GnAlertController"
s.version      = "0.0.1"
s.summary      = "iOS弹出控件"

s.homepage     = "https://github.com/1091673851/GnAlertController"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "Gn_chen" => "1091673851@qq.com" }

s.platform     = :ios, "9.0"

s.source       = { :git => "https://github.com/wujunyang/jiaModuleDemo.git", :tag => "#{s.version}" }

s.requires_arc = true

s.subspec 'JiaCore' do |jiaCore|
jiaCore.source_files = 'jiaModuleDemo/BaseModule/JiaCore/**/*.{h,m}'
jiaCore.dependency 'XAspect'
jiaCore.dependency 'YYCache'
jiaCore.dependency 'JSPatch'
jiaCore.dependency 'RealReachability'
jiaCore.dependency 'FLEX', '~> 2.0'
jiaCore.dependency 'CocoaLumberjack', '~> 2.0.0-rc'
jiaCore.dependency 'AFNetworking', '~> 3.0'
end

s.subspec 'JiaGT' do |jiaGT|
jiaGT.source_files = 'jiaModuleDemo/BaseModule/JiaGT/**/*'
jiaGT.dependency 'jiaModule/JiaCore'
jiaGT.dependency 'XAspect'
jiaGT.dependency 'GTSDK'
end

s.subspec 'JiaAnalytics' do |jiaAnalytics|
jiaAnalytics.source_files = 'jiaModuleDemo/BaseModule/JiaAnalytics/**/*'
jiaAnalytics.dependency 'jiaModule/JiaCore'
jiaAnalytics.dependency 'XAspect'
jiaAnalytics.dependency 'Aspects'
jiaAnalytics.dependency 'UMengAnalytics-NO-IDFA', '~> 4.1.1'
end


s.subspec 'JiaShare' do |jiaShare|
jiaShare.source_files = 'jiaModuleDemo/BaseModule/JiaShare/**/*'
jiaShare.dependency 'jiaModule/JiaCore'
jiaShare.dependency 'XAspect'
jiaShare.dependency 'UMengUShare/UI'
jiaShare.dependency 'UMengUShare/Social/Sina'
jiaShare.dependency 'UMengUShare/Social/WeChat'
jiaShare.dependency 'UMengUShare/Social/QQ'
jiaShare.dependency 'UMengUShare/Social/TencentWeibo'
end



s.frameworks = 'UIKit'

# s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
# s.dependency "JSONKit", "~> 1.4"
end
