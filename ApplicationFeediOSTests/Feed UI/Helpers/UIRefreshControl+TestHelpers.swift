//
//  UIRefreshControl+TestHelpers.swift
//  ApplicationFeediOSTests
//
//  Created by Kantemir Vologirov on 29.11.23..
//

import UIKit

extension UIRefreshControl {
    func simulatePullToRefresh() {
        simulate(event: .valueChanged)
    }
}
