//
//  NullStore.swift
//  ApplicationApp
//
//  Created by Kantemir Vologirov on 14.12.24..
//

import Foundation
import ApplicationFeed

class NullStore: FeedStore & FeedImageDataStore {
    func deleteCachedFeed(completion: @escaping DeletionCompletion) {
        completion(.success(()))
    }

    func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {
        completion(.success(()))
    }

    func retrieve(completion: @escaping RetrievalCompletion) {
        completion(.success(.none))
    }

    func insert(_ data: Data, for url: URL) throws {}

    func retrieve(dataForURL url: URL) throws -> Data? { .none }
}
