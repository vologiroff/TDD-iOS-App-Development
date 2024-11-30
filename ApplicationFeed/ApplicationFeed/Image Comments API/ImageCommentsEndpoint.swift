//
//  ImageCommentsEndpoint.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 9.11.24..
//

import Foundation

public enum ImageCommentsEndpoint {
    case get(UUID)

    public func url(baseURL: URL) -> URL {
        switch self {
        case let .get(id):
            return baseURL.appendingPathComponent("/v1/image/\(id)/comments")
        }
    }
}
