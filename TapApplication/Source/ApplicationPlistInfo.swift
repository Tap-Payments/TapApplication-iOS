//
//  ApplicationPlistInfo.swift
//  TapApplication
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

/// Dummy class to get application plist information.
public class ApplicationPlistInfo {

    // MARK: - Public -
    // MARK: Properties

    public static let shared = ApplicationPlistInfo()

    // MARK: - Private -
    // MARK: Methods

    private init() {}
}

// MARK: - TapApplicationWithPlist
extension ApplicationPlistInfo: TapApplicationWithPlist {}
