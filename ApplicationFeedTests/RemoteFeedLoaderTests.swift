//
//  RemoteFeedLoaderTests.swift
//  ApplicationFeedTests
//
//  Created by Kantemir Vologirov on 14.10.23..
//

import XCTest

class RemoteFeedLoader {
    func load() {
        HTTPClient.shared.get(from: URL(string: "https://a-url.com")!)
    }
}

class HTTPClient {
    static var shared = HTTPClient()
    
    func get(from url: URL) {}
}

class HTTPClientSpy: HTTPClient {
    override func get(from url: URL) {
        requestedURL = url
    }
    
    var requestedURL: URL?
}

final class RemoteFeedLoaderTests: XCTestCase {

    func test_init_doesNotRequestDataFromUrl() {
        let client = HTTPClientSpy()
        HTTPClient.shared = client
        _ = RemoteFeedLoader()

        XCTAssertNil(client.requestedURL)
    }
    
    func test_load_requestDataFromURL() {
        let client = HTTPClientSpy()
        HTTPClient.shared = client
        let sut = RemoteFeedLoader()
        
        sut.load()
        
        XCTAssertNotNil(client.requestedURL)
    }

}
