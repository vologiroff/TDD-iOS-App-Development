//
//  FeedImagePresenter.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 24.12.23..
//

public final class FeedImagePresenter {
    
    public static func map(_ image: FeedImage) -> FeedImageViewModel {
        FeedImageViewModel(
            description: image.description,
            location: image.location
        )
    }
}
