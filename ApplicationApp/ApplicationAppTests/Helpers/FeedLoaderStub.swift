//
//  FeedLoaderStub.swift
//  ApplicationAppTests
//
//  Created by Kantemir Vologirov on 15.7.24..
//

import ApplicationFeed

class FeedLoaderStub: FeedLoader {
    private let result: FeedLoader.Result

    init(result: FeedLoader.Result) {
        self.result = result
    }

    func load(completion: @escaping (FeedLoader.Result) -> Void) {
        completion(result)
    }
}
