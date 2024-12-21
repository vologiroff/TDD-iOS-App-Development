//
//  NullStore.swift
//  ApplicationApp
//
//  Created by Kantemir Vologirov on 14.12.24..
//

import Foundation
import ApplicationFeed

class NullStore: FeedStore & FeedImageDataStore {
    func deleteCachedFeed() throws {}

    func insert(_ feed: [LocalFeedImage], timestamp: Date) throws {}

    func retrieve() throws -> CachedFeed? { .none }

    func insert(_ data: Data, for url: URL) throws {}

    func retrieve(dataForURL url: URL) throws -> Data? { .none }
}
