//
//  FeedErrorViewModel.swift
//  ApplicationFeediOS
//
//  Created by Kantemir Vologirov on 24.12.23..
//

struct FeedErrorViewModel {
    let message: String?
    
    static var noError: FeedErrorViewModel {
        return FeedErrorViewModel(message: nil)
    }
    
    static func error(message: String) -> FeedErrorViewModel {
        return FeedErrorViewModel(message: message)
    }
}
