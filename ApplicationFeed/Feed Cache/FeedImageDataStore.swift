//
//  FeedImageDataStore.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 4.2.24..
//

import Foundation

public protocol FeedImageDataStore {
    typealias Result = Swift.Result<Data?, Error>

    func retrieve(dataForURL url: URL, completion: @escaping (Result) -> Void)
}
