//
//  XCTestCase+FailableDeleteFeedStoreSpecs.swift
//  ApplicationFeedTests
//
//  Created by Kantemir Vologirov on 19.11.23..
//

import XCTest
import ApplicationFeed

extension FailableDeleteFeedStoreSpecs where Self: XCTestCase {
    func assertThatDeleteDeliversErrorOnDeletionError(on sut: FeedStore, 
                                                      file: StaticString = #file,
                                                      line: UInt = #line) {
        let deletionError = deleteCache(from: sut)
        
        XCTAssertNotNil(deletionError, "Expected cache deletion to fail", file: file, line: line)
    }
    
    func assertThatDeleteHasNoSideEffectsOnDeletionError(on sut: FeedStore, 
                                                         file: StaticString = #file,
                                                         line: UInt = #line) {
        deleteCache(from: sut)
        
        expect(sut, toRetrieve: .success(.empty), file: file, line: line)
    }
}
