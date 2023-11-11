//
//  SharedTestHelpers.swift
//  ApplicationFeedTests
//
//  Created by Kantemir Vologirov on 11.11.23..
//

import Foundation

func anyNSError() -> NSError {
    return NSError(domain: "any error", code: 0)
}

func anyURL() -> URL {
    return URL(string: "http://any-url.com")!
}
