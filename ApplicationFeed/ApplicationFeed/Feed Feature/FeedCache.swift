//
//  FeedCache.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 15.7.24..
//

import Foundation

public protocol FeedCache {
    typealias Result = Swift.Result<Void, Error>

    func save(_ feed: [FeedImage], completion: @escaping (Result) -> Void)
}
