//
//  UIButton+TestHelpers.swift
//  ApplicationFeediOSTests
//
//  Created by Kantemir Vologirov on 29.11.23..
//

import UIKit

extension UIButton {
    func simulateTap() {
        simulate(event: .touchUpInside)
    }
}
