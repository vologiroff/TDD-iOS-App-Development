//
//  XCTestCase+FailableRetrieveFeedStoreSpecs.swift
//  ApplicationFeedTests
//
//  Created by Kantemir Vologirov on 19.11.23..
//

import XCTest
import ApplicationFeed

extension FailableRetrieveFeedStoreSpecs where Self: XCTestCase {
    func assertThatRetrieveDeliversFailureOnRetrievalError(on sut: FeedStore, 
                                                           file: StaticString = #file,
                                                           line: UInt = #line) {
        expect(sut, toRetrieve: .failure(anyNSError()), file: file, line: line)
    }
    
    func assertThatRetrieveHasNoSideEffectsOnFailure(on sut: FeedStore, 
                                                     file: StaticString = #file,
                                                     line: UInt = #line) {
        expect(sut, toRetrieveTwice: .failure(anyNSError()), file: file, line: line)
    }
}
