//
//  FeedImageDataCache.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 15.7.24..
//

import Foundation

public protocol FeedImageDataCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ data: Data, for url: URL, completion: @escaping (Result) -> Void)
}
