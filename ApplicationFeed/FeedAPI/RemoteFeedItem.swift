//
//  RemoteFeedItem.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 2.11.23..
//

import Foundation

internal struct RemoteFeedItem: Decodable {
    internal let id: UUID
    internal let description: String?
    internal let location: String?
    internal let image: URL
    
    var item: FeedItem {
        return FeedItem(id: id,
                        description: description,
                        location: location,
                        imageURL: image)
    }
}
