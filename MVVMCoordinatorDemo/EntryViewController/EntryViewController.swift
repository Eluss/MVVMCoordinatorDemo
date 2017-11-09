//
//  EntryViewController.swift
//  MVVMCoordinatorDemo
//
//  Created by Eliasz Sawicki on 09/11/2017.
//  Copyright © 2017 Eliasz Sawicki. All rights reserved.
//

import Foundation
import UIKit
class EntryViewController: UIViewController {

    private let viewModel: EntryViewModel
    
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
    
    private func setupView() {
        view.backgroundColor = .red
    }
    
}
