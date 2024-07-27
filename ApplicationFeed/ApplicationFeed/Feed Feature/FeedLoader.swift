//
//  FeedLoader.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 14.10.23..
//

public protocol FeedLoader {
    typealias Result = Swift.Result<[FeedImage], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
