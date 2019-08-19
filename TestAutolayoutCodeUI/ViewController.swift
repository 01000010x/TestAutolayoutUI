//
//  ViewController.swift
//  TestAutolayoutCodeUI
//
//  Created by Baptiste Leguey on 19/08/2019.
//  Copyright © 2019 fadc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerContainer: UIView!
    @IBOutlet weak var headerContainerHeightConstraint: NSLayoutConstraint!

    lazy var localizingHeader: HeaderView1 = {
        let localizingHeader = HeaderView1(forAutoLayout: ())
        return localizingHeader
    }()

    override func loadView() {
        super.loadView()
        setupViews()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func setupViews() {
        headerContainer.addSubview(localizingHeader)
        localizingHeader.autoPinEdgesToSuperview(withInsets: .zero, excludingEdge: nil)
    }
}

