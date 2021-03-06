TapAdditionsKitDependencyVersion    = '>= 1.3.3'	unless defined? TapAdditionsKitDependencyVersion
TapSwiftFixesDependencyVersion      = '>= 1.0.9'	unless defined? TapSwiftFixesDependencyVersion

Pod::Spec.new do |tapApplication|
    
    tapApplication.platform                 = :ios
    tapApplication.ios.deployment_target    = '8.0'
    tapApplication.swift_versions			= ['4.0', '4.2', '5.0']
    tapApplication.name                     = 'TapApplication'
    tapApplication.summary                  = 'Base Application interface.'
    tapApplication.requires_arc             = true
    tapApplication.version                  = '1.0.7'
    tapApplication.license                  = { :type => 'MIT', :file => 'LICENSE' }
    tapApplication.author                   = { 'Tap Payments' => 'hello@tap.company' }
    tapApplication.homepage                 = 'https://github.com/Tap-Payments/TapApplication-iOS'
    tapApplication.source                   = { :git => 'https://github.com/Tap-Payments/TapApplication-iOS.git', :tag => tapApplication.version.to_s }
    tapApplication.source_files             = 'TapApplication/Source/*.swift'
    
    tapApplication.dependency 'TapAdditionsKit/SwiftStandartLibrary/String',    TapAdditionsKitDependencyVersion
    tapApplication.dependency 'TapAdditionsKit/Tap/ClassProtocol',              TapAdditionsKitDependencyVersion
    tapApplication.dependency 'TapAdditionsKit/UIKit/UIViewController',         TapAdditionsKitDependencyVersion
    tapApplication.dependency 'TapSwiftFixes/Threading',                        TapSwiftFixesDependencyVersion
    
end
