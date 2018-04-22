//
//  TapApplicationPlistInfo.swift
//  TapApplication
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

/// Dummy class to get application plist information.
public class TapApplicationPlistInfo {

    // MARK: - Public -
    // MARK: Properties

    public static let shared = TapApplicationPlistInfo()

    // MARK: - Private -
    // MARK: Methods

    private init() {}
}

// MARK: - TapApplicationWithPlist
extension TapApplicationPlistInfo: TapApplicationWithPlist {

    public var bundle: Bundle {

        return .main
    }
}
