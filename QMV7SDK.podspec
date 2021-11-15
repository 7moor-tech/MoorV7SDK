

Pod::Spec.new do |spec|


  spec.name         = "QMV7SDK"
  spec.version      = "1.3.0"
  spec.summary      = "QMV7SDK iOS."

  spec.homepage     = "https://github.com/7moor-tech/QMV7SDK"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "jls" => "rockcodealin@163.com" }


  spec.platform     = :ios

  spec.ios.deployment_target = "9.0"

  spec.source       = { :git => "https://github.com/7moor-tech/QMV7SDK.git", :tag => spec.version.to_s }

  spec.source_files = "Classes/**/*.{h,m}"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.requires_arc = true

  spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  spec.dependency 'Qiniu', '~> 8.2.1'
  spec.dependency 'FMDB', '~> 2.7.5'
  spec.dependency 'SocketRocket', '~> 0.5.1'
  spec.dependency 'YYModel'

end
