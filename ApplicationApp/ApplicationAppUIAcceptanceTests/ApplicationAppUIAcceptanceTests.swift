//
//  ApplicationAppUIAcceptanceTests.swift
//  ApplicationAppUIAcceptanceTests
//
//  Created by Kantemir Vologirov on 17.7.24..
//

import XCTest

final class ApplicationAppUIAcceptanceTests: XCTestCase {
    
    func test_onLaunch_displaysRemoteFeedWhenCustomerHasConnectivity() {
        let app = XCUIApplication()
        
        app.launch()
        
        XCTAssertEqual(app.cells.count, 22)
        XCTAssertEqual(app.cells.firstMatch.images.count, 1)
    }
}
