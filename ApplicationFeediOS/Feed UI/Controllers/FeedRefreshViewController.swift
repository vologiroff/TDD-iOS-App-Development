//
//  FeedRefreshViewController.swift
//  ApplicationFeediOS
//
//  Created by Kantemir Vologirov on 28.11.23..
//

import UIKit

protocol FeedRefreshViewControllerDelegate {
    func didRequestFeedRefresh()
}

public final class FeedRefreshViewController: NSObject, FeedLoadingView {
    @IBOutlet public var view: UIRefreshControl!
    
    var delegate: FeedRefreshViewControllerDelegate?
    
    @IBAction func refresh() {
        delegate?.didRequestFeedRefresh()
    }
    
    func display(_ viewModel: FeedLoadingViewModel) {
        if viewModel.isLoading {
            view.beginRefreshing()
        } else {
            view.endRefreshing()
        }
    }
}
