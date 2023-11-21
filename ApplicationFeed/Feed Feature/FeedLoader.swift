//
//  FeedLoader.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 14.10.23..
//

import Foundation

public typealias LoadFeedResult = Result<[FeedImage], Error>

public protocol FeedLoader {
    func load(completion: @escaping (LoadFeedResult) -> Void)
}
