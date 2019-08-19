//
//  HeaderView2.swift
//  TestAutolayoutCodeUI
//
//  Created by Baptiste Leguey on 19/08/2019.
//  Copyright © 2019 fadc. All rights reserved.
//

import UIKit

class HeaderView2: UIView {

    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel(forAutoLayout: ())
        titleLabel.backgroundColor = .blue
        titleLabel.font = UIFont.systemFont(ofSize: 36, weight: .medium)
        titleLabel.text = "Custom View klsjdflkas asldkfja sdflk asldkfj asldk alsdkf asldfk jaslkdf asldfkj asldfk asldfk a;lsdf asldf jalsdf a;ldfk asldfk jas;ldfk asldfk jaslkdfjalsdfjoieuorqiwe jrqioweuqowiuer qwoieru qweori qwepoi usdfklj as;ldfk asdfuoieufops difasdf opaisd foapsid fasid jlksa dlkfa sl;dkf jaosidufopaisduf opaisd fopaisd flkjd f;laksd fj;lasd fioausdfpiausdpf"
        titleLabel.textAlignment = .left
        titleLabel.lineBreakMode = .byWordWrapping
        titleLabel.numberOfLines = 0
        titleLabel.sizeToFit()
        return titleLabel
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
        setupLayout()
    }

    private func setupLayout() {
        NSLayoutConstraint.activate([
            //pin titleLabel to DistrictListHeaderLocalizingView
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }

    //custom views should override this to return true if
    //they cannot layout correctly using autoresizing.
    //from apple docs https://developer.apple.com/documentation/uikit/uiview/1622549-requiresconstraintbasedlayout
    override class var requiresConstraintBasedLayout: Bool {
        return true
    }
}
