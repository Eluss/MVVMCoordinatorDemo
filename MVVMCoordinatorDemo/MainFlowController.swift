//
//  MainFlowController.swift
//  MVVMCoordinatorDemo
//
//  Created by Eliasz Sawicki on 09/11/2017.
//  Copyright © 2017 Eliasz Sawicki. All rights reserved.
//

import Foundation
import UIKit

class MainFlowController {
    
    private let rootNavigationController: UINavigationController
    
    init(rootNavigationController: UINavigationController) {
        self.rootNavigationController = rootNavigationController
    }
    
    func startFlow() {
        let viewModel = EntryDefaultViewModel()
        let entry = EntryViewController(viewModel: viewModel)
        rootNavigationController.pushViewController(entry, animated: true)
    }
    
}
