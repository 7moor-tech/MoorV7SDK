

Pod::Spec.new do |spec|


  spec.name         = "QMV7SDK"
  spec.version      = "1.0"
  spec.summary      = "QMV7SDK_iOS."

  spec.homepage     = "https://github.com/7moor-tech/QMV7SDK"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author       = { "RockALins" => "rockcodealin@163.com" }


  spec.platform     = :ios,"9.0"

  spec.source       = { :git => "https://github.com/7moor-tech/QMV7SDK.git", :tag => spec.version }

  spec.source_files  = "QMV7SDK.framework/Headers/*.h"

  spec.vendored_frameworks  = "QMV7SDK.framework"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.requires_arc = true

  spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  spec.dependency 'Qiniu', '~> 8.2.1'
  spec.dependency 'FMDB', '~> 2.7.5'
  spec.dependency 'SocketRocket', '~> 0.5.1'
  spec.dependency 'YYModel', '~> 1.0.4'

end
