//
//  FeedEndpointTests.swift
//  ApplicationFeedTests
//
//  Created by Kantemir Vologirov on 9.11.24..
//

import XCTest
import ApplicationFeed

class FeedEndpointTests: XCTestCase {

    func test_feed_endpointURL() {
        let baseURL = URL(string: "http://base-url.com")!

        let received = FeedEndpoint.get.url(baseURL: baseURL)
        let expected = URL(string: "http://base-url.com/v1/feed")!

        XCTAssertEqual(received, expected)
    }

}
