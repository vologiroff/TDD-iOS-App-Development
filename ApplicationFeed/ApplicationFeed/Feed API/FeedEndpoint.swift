//
//  FeedEndpoint.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 9.11.24..
//

import Foundation

public enum FeedEndpoint {
    case get

    public func url(baseURL: URL) -> URL {
        switch self {
        case .get:
            return baseURL.appendingPathComponent("/v1/feed")
        }
    }
}
