//
//  TapApplicationWithPlist.swift
//  TapApplication
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

import protocol TapAdditionsKit.ClassProtocol

/// Protocol to retrieve interesting plist info from the main application bundle.
public protocol TapApplicationWithPlist: ClassProtocol {}

public extension TapApplicationWithPlist {

    // MARK: - Public -
    // MARK: Properties

    /// Application display name.
    public var displayName: String {

        return self.infoPlistString(for: InfoPlistKeys.displayName)
    }

    /// Application short version ( e.g. "1.1" )
    public var shortVersion: String {

        return self.infoPlistString(for: InfoPlistKeys.shortVersion)
    }

    /// Application build string.
    public var build: String {

        return self.infoPlistString(for: InfoPlistKeys.build)
    }

    /// Bundle identifier.
    public var bundleIdentifier: String {

        return self.infoPlistString(for: InfoPlistKeys.bundleIdentifier)
    }

    /// Deep link URL scheme (if present).
    public var deepLinkURLScheme: String? {

        guard let urlTypes = Bundle.main.object(forInfoDictionaryKey: InfoPlistKeys.urlTypes) as? [[String: Any]] else { return nil }

        let bundleID = self.bundleIdentifier

        for type in urlTypes {

            guard let bundleURLName = type[InfoPlistKeys.URLTypes.urlName] as? String, bundleURLName == bundleID else { continue }
            guard let urlSchemes = type[InfoPlistKeys.URLTypes.urlSchemes] as? [String], urlSchemes.count > 0 else { continue }

            guard urlSchemes.filter({ $0.hasPrefix(InfoPlistKeys.URLTypes.tagmanager) }).count == 0 else { continue }

            return urlSchemes.first
        }

        return nil
    }

    // MARK: - Private -
    // MARK: Methods

    private func infoPlistString(for key: String) -> String {

        if let result = Bundle.main.object(forInfoDictionaryKey: key) as? String {

            return result

        } else {

            return .empty
        }
    }
}

private struct InfoPlistKeys {

    fileprivate static let build = "CFBundleVersion"
    fileprivate static let bundleIdentifier = "CFBundleIdentifier"
    fileprivate static let displayName = "CFBundleDisplayName"
    fileprivate static let shortVersion = "CFBundleShortVersionString"
    fileprivate static let urlTypes = "CFBundleURLTypes"

    fileprivate struct URLTypes {

        fileprivate static let tagmanager = "tagmanager"
        fileprivate static let urlName = "CFBundleURLName"
        fileprivate static let urlSchemes = "CFBundleURLSchemes"

        @available(*, unavailable) private init() {}
    }

    @available(*, unavailable) private init() {}
}
