Pod::Spec.new do |tapApplication|
    
    tapApplication.platform = :ios
    tapApplication.ios.deployment_target = '8.0'
    tapApplication.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.1' }
    tapApplication.name = 'TapApplication'
    tapApplication.summary = 'Base Application interface.'
    tapApplication.requires_arc = true
    tapApplication.version = '1.0.2'
    tapApplication.license = { :type => 'MIT', :file => 'LICENSE' }
    tapApplication.author = { 'Tap Payments' => 'hello@tap.company' }
    tapApplication.homepage = 'https://github.com/Tap-Payments/TapApplication-iOS'
    tapApplication.source = { :git => 'https://github.com/Tap-Payments/TapApplication-iOS.git', :tag => tapApplication.version.to_s }
    tapApplication.source_files = 'TapApplication/Source/*.swift'
    
    tapApplication.dependency 'TapAdditionsKit/SwiftStandartLibrary/String'
    tapApplication.dependency 'TapAdditionsKit/Tap/ClassProtocol'
    tapApplication.dependency 'TapAdditionsKit/UIKit/UIViewController'
    tapApplication.dependency 'TapSwiftFixes/Threading'
    
end
