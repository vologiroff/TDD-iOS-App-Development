//
//  FeedViewControllerTests.swift
//  ApplicationFeediOSTests
//
//  Created by Kantemir Vologirov on 24.11.23..
//

import XCTest

final class FeedViewController {
    init(loader: FeedViewControllerTests.LoaderSpy) {
        
    }
}

final class FeedViewControllerTests: XCTestCase {
    
    func test_unit_doesNotLoadFeed() {
        let loader = LoaderSpy()
        _ = FeedViewController(loader: loader)
        
        XCTAssertEqual(loader.loadCallCount, 0)
    }
    
    //MARK: - Helpers
    
    class LoaderSpy {
        private (set) var loadCallCount: Int = 0
    }
}
