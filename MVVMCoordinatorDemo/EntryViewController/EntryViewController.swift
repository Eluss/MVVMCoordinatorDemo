//
//  EntryViewController.swift
//  MVVMCoordinatorDemo
//
//  Created by Eliasz Sawicki on 09/11/2017.
//  Copyright © 2017 Eliasz Sawicki. All rights reserved.
//

import UIKit
import SnapKit
import ReactiveCocoa
import ReactiveSwift

class EntryViewController: UIViewController {

    private let viewModel: EntryViewModel
    
    private lazy var fetchUserButton: UIButton = {
        let button = UIButton()
        button.setTitle("Fetch user", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.setTitleColor(.white, for: .highlighted)
        button.addTarget(self, action: #selector(onFetchUserButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private lazy var currentUserLabel: UILabel = {
        let label = UILabel()
        return label
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
        setupObservers()
        setupView()
    }
    
    private func setupObservers() {
        currentUserLabel.reactive.text <~ self.viewModel.userName
    }
    
    @objc func onFetchUserButtonTapped() {
        viewModel.fetchUser()
    }

    private func setupView() {
        view.backgroundColor = .red
        
        view.addSubview(fetchUserButton)
        view.addSubview(saveUserButton)
        view.addSubview(currentUserLabel)
        
        fetchUserButton.snp.makeConstraints { (make) in
            make.center.equalTo(self.view.center)
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
        
        currentUserLabel.snp.makeConstraints { (make) in
            make.bottom.equalTo(self.fetchUserButton.snp.top).inset(20)
            make.centerX.equalTo(self.view)
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
    }
    
}
