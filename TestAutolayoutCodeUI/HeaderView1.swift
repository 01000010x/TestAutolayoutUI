//
//  HeaderView1.swift
//  TestAutolayoutCodeUI
//
//  Created by Baptiste Leguey on 19/08/2019.
//  Copyright © 2019 fadc. All rights reserved.
//

import UIKit

class HeaderView1: UIView {

    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel(forAutoLayout: ())
        titleLabel.backgroundColor = .blue
        titleLabel.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        titleLabel.text = "Custom View"
        titleLabel.textAlignment = .left
        titleLabel.sizeToFit()
        return titleLabel
    }()

    lazy var locationSpinner: UIActivityIndicatorView = {
        let locationSpinner = UIActivityIndicatorView(forAutoLayout: ())
        locationSpinner.color = .black
        locationSpinner.startAnimating()
        locationSpinner.style = .whiteLarge
        locationSpinner.backgroundColor = .purple
        return locationSpinner
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView() {
        backgroundColor = .red
        addSubview(titleLabel)
        addSubview(locationSpinner)
        setupLayout()
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            //pin titleLabel to DistrictListHeaderLocalizingView
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),

            //pin location spinner to titleLabel
            locationSpinner.leadingAnchor.constraint(greaterThanOrEqualTo: titleLabel.trailingAnchor),
            locationSpinner.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor),
            locationSpinner.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }

    //custom views should override this to return true if
    //they cannot layout correctly using autoresizing.
    //from apple docs https://developer.apple.com/documentation/uikit/uiview/1622549-requiresconstraintbasedlayout
    override class var requiresConstraintBasedLayout: Bool {
        return true
    }
}
