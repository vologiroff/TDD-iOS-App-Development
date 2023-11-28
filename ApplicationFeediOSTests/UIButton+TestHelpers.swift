//
//  UIButton+TestHelpers.swift
//  ApplicationFeediOSTests
//
//  Created by Kantemir Vologirov on 29.11.23..
//

import UIKit

 extension UIButton {
     func simulateTap() {
         allTargets.forEach { target in
             actions(forTarget: target, forControlEvent: .touchUpInside)?.forEach {
                 (target as NSObject).perform(Selector($0))
             }
         }
     }
 }
