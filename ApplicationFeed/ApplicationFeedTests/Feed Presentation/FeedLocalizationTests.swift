//
//  FeedLocalizationTests.swift
//  ApplicationFeediOSTests
//
//  Created by Kantemir Vologirov on 6.12.23..
//

import XCTest
@testable import ApplicationFeed

final class FeedLocalizationTests: XCTestCase {
    
    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "Feed"
        let bundle = Bundle(for: FeedPresenter.self)
        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }
}
