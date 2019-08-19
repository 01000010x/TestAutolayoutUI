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

    lazy var headerView2: HeaderView2 = {
        let headerView2 = HeaderView2(forAutoLayout: ())
        return headerView2
    }()

    override func loadView() {
        super.loadView()
        headerContainerHeightConstraint.isActive = false
        setupView1()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    private func setupView1() {
        headerContainer.addSubview(localizingHeader)
        localizingHeader.autoPinEdgesToSuperview(withInsets: .zero, excludingEdge: nil)
    }

    private func setupView2() {
        headerContainer.addSubview(headerView2)
        headerView2.autoPinEdgesToSuperview(withInsets: .zero, excludingEdge: nil)
        //headerContainerHeightConstraint.isActive = false
    }

    private func removeHeaderSubviewsView() {
        headerContainer.subviews.map { $0.removeFromSuperview() }
    }

    @IBAction func action(_ sender: Any) {
        removeHeaderSubviewsView()
        setupView2()
    }

}

