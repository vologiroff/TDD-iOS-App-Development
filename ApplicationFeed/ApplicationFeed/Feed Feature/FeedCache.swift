//
//  FeedCache.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 15.7.24..
//

import Foundation

public protocol FeedCache {
    func save(_ feed: [FeedImage]) throws
}
