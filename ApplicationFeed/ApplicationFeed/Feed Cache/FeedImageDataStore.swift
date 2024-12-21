//
//  FeedImageDataStore.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 4.2.24..
//

import Foundation

public protocol FeedImageDataStore {
    func insert(_ data: Data, for url: URL) throws
    func retrieve(dataForURL url: URL) throws -> Data?
}
