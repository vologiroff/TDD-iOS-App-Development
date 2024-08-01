//
//  FeedImageViewModel.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 24.12.23..
//

public struct FeedImageViewModel {
    public let description: String?
    public let location: String?
    
    public var hasLocation: Bool {
        return location != nil
    }
}
