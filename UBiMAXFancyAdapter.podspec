
Pod::Spec.new do |s|
  s.name             = 'UBiMAXFancyAdapter'
  s.version          = '2.2.920.0'
  s.summary          = 'UBiX聚合Sass SDK Fancy Adapter'
  s.homepage         = 'https://www.ubixai.com/product/md'
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhugq' => 'guoqiang.zhu@ubixai.com' }
  s.source           = { :git => 'https://github.com/ubixai/UBiMAXFancyAdapter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'

  s.static_framework = true
  s.vendored_frameworks = 'UBiMAXFancyAdapter.framework'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'OTHER_LINK_FLAG' => '$(inherited) -ObjC' }

  s.dependency 'PTGAdUbix', '2.2.920'
  s.dependency 'UBiMAXAdSDK'

end
