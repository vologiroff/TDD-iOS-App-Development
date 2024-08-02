//
//  FeedErrorViewModel.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 24.12.23..
//

public struct ResourceErrorViewModel {
    public let message: String?

    static var noError: ResourceErrorViewModel {
        return ResourceErrorViewModel(message: nil)
    }

    static func error(message: String) -> ResourceErrorViewModel {
        return ResourceErrorViewModel(message: message)
    }
}
