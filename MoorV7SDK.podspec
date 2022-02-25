

Pod::Spec.new do |spec|


  spec.name         = "MoorV7SDK"
  spec.version      = "1.5.0"
  spec.summary      = "MoorV7SDK_iOS."

  spec.homepage     = "https://github.com/7moor-tech/MoorV7SDK"

  spec.license      = "MIT"

  spec.author       = { "RockALins" => "rockcodealin@163.com" }

  spec.platform     = :ios,'9.0'

  spec.source       = { :git => "https://github.com/7moor-tech/MoorV7SDK.git", :tag => spec.version.to_s }

  #spec.source_files  = '**/MoorV7SDK.framework/Headers/*.h'

  spec.resource      = 'MoorV7Bundle.bundle'
  spec.vendored_frameworks  = "MoorV7SDK.framework"

  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  spec.requires_arc = true

  spec.xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/MoorV7SDK/MoorV7SDK.framework/Headers/'}
  spec.dependency 'Qiniu', '~> 8.2.1'
  spec.dependency 'FMDB', '~> 2.7.5'
  spec.dependency 'SocketRocket', '~> 0.5.1'
  spec.dependency 'YYModel', '~> 1.0.4'

end
