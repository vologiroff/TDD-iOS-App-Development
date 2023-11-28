//
//  UIRefreshControl+TestHelpers.swift
//  ApplicationFeediOSTests
//
//  Created by Kantemir Vologirov on 29.11.23..
//

import UIKit

 extension UIRefreshControl {
     func simulatePullToRefresh() {
         allTargets.forEach { target in
             actions(forTarget: target, forControlEvent: .valueChanged)?.forEach {
                 (target as NSObject).perform(Selector($0))
             }
         }
     }
 }
