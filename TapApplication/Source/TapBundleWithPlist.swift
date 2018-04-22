//
//  TapBundleWithPlist.swift
//  TapApplication
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

import enum UIKit.UIDevice.UIUserInterfaceIdiom

/// Protocol to retrieve most of the plist information from bundle.
public protocol TapBundleWithPlist {

    // MARK: Properties

    /// Bundle to retrieve information from.
    var bundle: Bundle { get }
}

public extension TapBundleWithPlist {

    // MARK: - Public -
    // MARK: Properties

    public var buildMachineOSBuild: String? {

        return self.plistObject(for: TapBundleInfoKeys.buildMachineOSBuild)
    }

    public var bundleDevelopmentRegion: String? {

        return self.plistObject(for: TapBundleInfoKeys.bundleDevelopmentRegion)
    }

    public var bundleExecutable: String? {

        return self.plistObject(for: TapBundleInfoKeys.bundleExecutable)
    }

    public var bundleIdentifier: String? {

        return self.plistObject(for: TapBundleInfoKeys.bundleIdentifier)
    }

    public var bundleInfoDictionaryVersion: String? {

        return self.plistObject(for: TapBundleInfoKeys.bundleInfoDictionaryVersion)
    }

    public var bundleName: String? {

        return self.plistObject(for: TapBundleInfoKeys.bundleName)
    }

    public var bundleNumericVersion: Int64? {

        return self.plistObject(for: TapBundleInfoKeys.bundleNumericVersion)
    }

    public var bundlePackageType: String? {

        return self.plistObject(for: TapBundleInfoKeys.bundlePackageType)
    }

    public var shortVersionString: String? {

        return self.plistObject(for: TapBundleInfoKeys.shortVersionString)
    }

    public var bundleSignature: String? {

        return self.plistObject(for: TapBundleInfoKeys.bundleSignature)
    }

    public var supportedPlatforms: [String]? {

        return self.plistObject(for: TapBundleInfoKeys.supportedPlatforms)
    }

    public var bundleVersion: String? {

        return self.plistObject(for: TapBundleInfoKeys.bundleVersion)
    }

    public var compiler: String? {

        return self.plistObject(for: TapBundleInfoKeys.compiler)
    }

    public var platformBuild: String? {

        return self.plistObject(for: TapBundleInfoKeys.platformBuild)
    }

    public var platformName: String? {

        return self.plistObject(for: TapBundleInfoKeys.platformName)
    }

    public var platformVersion: String? {

        return self.plistObject(for: TapBundleInfoKeys.platformVersion)
    }

    public var sdkBuild: String? {

        return self.plistObject(for: TapBundleInfoKeys.sdkBuild)
    }

    public var sdkName: String? {

        return self.plistObject(for: TapBundleInfoKeys.sdkName)
    }

    public var xcodeVersion: String? {

        return self.plistObject(for: TapBundleInfoKeys.xcodeVersion)
    }

    public var xcodeBuild: String? {

        return self.plistObject(for: TapBundleInfoKeys.xcodeBuild)
    }

    public var minimumOSVersion: String? {

        return self.plistObject(for: TapBundleInfoKeys.minimumOSVersion)
    }

    public var deviceFamily: [UIUserInterfaceIdiom]? {

        return self.plistObject(for: TapBundleInfoKeys.deviceFamily)
    }

    public var requiredDeviceCapabilities: String? {

        return self.plistObject(for: TapBundleInfoKeys.requiredDeviceCapabilities)
    }

    // MARK: Methods

    internal func plistObject<ReturnType>(for key: String) -> ReturnType? {

        return self.bundle.object(forInfoDictionaryKey: key) as? ReturnType
    }
}
