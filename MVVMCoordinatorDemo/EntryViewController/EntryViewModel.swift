//
//  EntryViewModel.swift
//  MVVMCoordinatorDemo
//
//  Created by Eliasz Sawicki on 09/11/2017.
//  Copyright © 2017 Eliasz Sawicki. All rights reserved.
//

import Foundation

protocol EntryViewModel {
    func onFetchUser()
}

class EntryDefaultViewModel: EntryViewModel {
    
    func onFetchUser() {
        print("Test")
    }
    
}
