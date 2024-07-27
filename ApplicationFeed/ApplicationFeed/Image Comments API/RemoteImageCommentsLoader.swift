//
//  RemoteImageCommentsLoader.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 24.7.24..
//

public typealias RemoteImageCommentsLoader = RemoteLoader<[ImageComment]>

public extension RemoteImageCommentsLoader {
    convenience init(url: URL, client: HTTPClient) {
        self.init(url: url, client: client, mapper: ImageCommentsMapper.map)
    }
}
