//
//  FeedPresenter.swift
//  ApplicationFeed
//
//  Created by Kantemir Vologirov on 24.12.23..
//

public final class FeedPresenter {
    
    public static var title: String {
        NSLocalizedString(
            "FEED_VIEW_TITLE",
            tableName: "Feed",
            bundle: Bundle(for: FeedPresenter.self),
            comment: "Title for the feed view"
        )
    }
}
