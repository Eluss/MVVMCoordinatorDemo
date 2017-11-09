//
//  EntryViewController.swift
//  MVVMCoordinatorDemo
//
//  Created by Eliasz Sawicki on 09/11/2017.
//  Copyright © 2017 Eliasz Sawicki. All rights reserved.
//

import UIKit
import SnapKit

class EntryViewController: UIViewController {

    private let viewModel: EntryViewModel
    
    private lazy var fetchUserButton: UIButton = {
        let button = UIButton()
        button.setTitle("Open user screen", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.white, for: .highlighted)
        button.addTarget(self, action: #selector(onFetchUserButtonTapped), for: .touchUpInside)
        return button
    }()
    
    init(viewModel: EntryViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        setupView()
    }
    
    @objc func onFetchUserButtonTapped() {
        viewModel.onFetchUser()
    }
    
    private func setupView() {
        view.backgroundColor = .red
        
        view.addSubview(fetchUserButton)
        fetchUserButton.snp.makeConstraints { (make) in
            make.center.equalTo(self.view.center)
            make.width.height.equalTo(200)
        }
    }
    
}
