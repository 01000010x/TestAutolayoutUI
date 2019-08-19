//
//  UIView+Extensions.swift
//  TestAutolayoutCodeUI
//
//  Created by Baptiste Leguey on 19/08/2019.
//  Copyright © 2019 fadc. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    // MARK: - Constraints helper

    /// Convenience init setting translatesAutoresizingMaskIntoConstraints to false
    ///
    /// - Parameter forAutoLayout: ())
    convenience init(forAutoLayout: ()) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
    }

    /// Shortcut method to pin a view to the edges of its superview
    func autoPinEdgesToSuperview(withInsets insets: UIEdgeInsets = UIEdgeInsets.zero, excludingEdge: UIRectEdge? = nil) {
        if let superview = superview {
            if excludingEdge == nil || excludingEdge! != .left {
                leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: insets.left).isActive = true
            }
            if excludingEdge == nil || excludingEdge! != .right {
                trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -insets.right).isActive = true
            }
            if excludingEdge == nil || excludingEdge! != .top {
                topAnchor.constraint(equalTo: superview.topAnchor, constant: insets.top).isActive = true
            }
            if excludingEdge == nil || excludingEdge! != .bottom {
                bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -insets.bottom).isActive = true
            }
        } else {
            print("Cannot autoPinEdgesToSuperview without superview. Call addSubview prior to this method.")
        }
    }
}
