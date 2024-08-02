//
//  FeedImagePresenterTests.swift
//  ApplicationFeedTests
//
//  Created by Kantemir Vologirov on 24.12.23..
//

import XCTest
import ApplicationFeed

class FeedImagePresenterTests: XCTestCase {
    
    func test_map_createsViewModel() {
        let image = uniqueImage()
        
        let viewModel = FeedImagePresenter.map(image)
        
        XCTAssertEqual(viewModel.description, image.description)
        XCTAssertEqual(viewModel.location, image.location)
    }
    
}
