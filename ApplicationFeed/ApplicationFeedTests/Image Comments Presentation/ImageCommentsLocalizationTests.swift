//
//  ImageCommentsLocalizationTests.swift
//  ApplicationFeedTests
//
//  Created by Kantemir Vologirov on 2.8.24..
//

import XCTest
import ApplicationFeed

class ImageCommentsLocalizationTests: XCTestCase {

    func test_localizedStrings_haveKeysAndValuesForAllSupportedLocalizations() {
        let table = "ImageComments"
        let bundle = Bundle(for: ImageCommentsPresenter.self)

        assertLocalizedKeyAndValuesExist(in: bundle, table)
    }

}
