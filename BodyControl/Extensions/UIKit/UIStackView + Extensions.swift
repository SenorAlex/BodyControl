//
//  UIStackView + Extensions.swift
//  BodyControl
//
//  Created by Alex on 12.10.2022.
//

import UIKit

extension UIStackView {
    convenience init(arrangedSubviews: [UIView], spacing: CGFloat) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.axis = .horizontal
        self.spacing = spacing
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
