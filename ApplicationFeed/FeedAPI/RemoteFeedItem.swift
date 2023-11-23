//
//  RemoteFeedItem.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 2.11.23..
//

import Foundation

struct RemoteFeedItem: Decodable {
    let id: UUID
    let description: String?
    let location: String?
    let image: URL
}
