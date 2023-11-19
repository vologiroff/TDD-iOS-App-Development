//
//  XCTestCase+FailableInsertFeedStoreSpecs.swift
//  ApplicationFeedTests
//
//  Created by Kantemir Vologirov on 19.11.23..
//

import XCTest
import ApplicationFeed

extension FailableInsertFeedStoreSpecs where Self: XCTestCase {
    func assertThatInsertDeliversErrorOnInsertionError(on sut: FeedStore, 
                                                       file: StaticString = #file,
                                                       line: UInt = #line) {
        let insertionError = insert((uniqueImageFeed().local, Date()), to: sut)
        
        XCTAssertNotNil(insertionError, "Expected cache insertion to fail with an error", file: file, line: line)
    }
    
    func assertThatInsertHasNoSideEffectsOnInsertionError(on sut: FeedStore, 
                                                          file: StaticString = #file,
                                                          line: UInt = #line) {
        insert((uniqueImageFeed().local, Date()), to: sut)
        
        expect(sut, toRetrieve: .empty, file: file, line: line)
    }
}
