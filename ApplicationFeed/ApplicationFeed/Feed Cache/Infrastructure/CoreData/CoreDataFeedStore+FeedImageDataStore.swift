//
//  CoreDataFeedStore+FeedImageDataStore.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 8.7.24..
//

import Foundation

extension CoreDataFeedStore: FeedImageDataStore {
    public func insert(_ data: Data, for url: URL) throws {
        try ManagedFeedImage.first(with: url, in: context)
            .map { $0.data = data }
            .map(context.save)
    }

    public func retrieve(dataForURL url: URL) throws -> Data? {
        try ManagedFeedImage.data(with: url, in: context)
    }
}
