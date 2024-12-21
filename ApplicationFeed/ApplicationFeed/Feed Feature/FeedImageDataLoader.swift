//
//  FeedImageDataLoader.swift
//  ApplicationFeediOS
//
//  Created by Kantemir Vologirov on 28.11.23..
//

import Foundation

public protocol FeedImageDataLoader {
    func loadImageData(from url: URL) throws -> Data
}
