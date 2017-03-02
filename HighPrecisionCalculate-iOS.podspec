Pod::Spec.new do |spec|
  spec.name = 'HighPrecisionCalculate-iOS'
  spec.version = '1.0.1'
  spec.summary = 'Encapsulation for NSDecimalNumber'
  spec.homepage = 'https://github.com/AIE-iOS/HighPrecisionCalculate-iOS'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'AIE-iOS' => 'brianlee93@vip.qq.com' }
  spec.source = { :git => 'https://github.com/AIE-iOS/HighPrecisionCalculate-iOS.git', :tag => "#{spec.version}" }
  spec.source_files = 'Source/*.swift'
  spec.ios.deployment_target = '8.0'
  spec.tvos.deployment_target = '9.0'
  spec.requires_arc = true
  spec.frameworks = "UIKit", "Foundation"
  spec.module_name = 'HighPrecisionCalculate'
end
