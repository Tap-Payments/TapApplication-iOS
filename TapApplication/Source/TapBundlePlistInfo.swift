//
//  TapBundlePlistInfo.swift
//  TapApplication
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

public class TapBundlePlistInfo {

    // MARK: - Public -
    // MARK: Properties

    public let bundle: Bundle

    // MARK: Methods

    public required init(bundle: Bundle) {

        self.bundle = bundle
    }
}

extension TapBundlePlistInfo: TapBundleWithPlist {}
