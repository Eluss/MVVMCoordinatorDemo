//
//  EntryViewModel.swift
//  MVVMCoordinatorDemo
//
//  Created by Eliasz Sawicki on 09/11/2017.
//  Copyright © 2017 Eliasz Sawicki. All rights reserved.
//

import Foundation
import ReactiveSwift
import enum Result.NoError

protocol EntryViewModel {
    func fetchUser()    
    
    var userName: Property<String> {get}
}

class EntryDefaultViewModel: EntryViewModel {
    
    private let userFetcher: UserFetcher
    private var mutableUserName = MutableProperty("")
    lazy var userName: Property<String> = Property(self.mutableUserName)
    
    init(userFetcher: UserFetcher) {
        self.userFetcher = userFetcher
    }
    
    func fetchUser() { // why don't I return user Signal Producer here?
        mutableUserName.value = "Loading user..."
        mutableUserName <~ userFetcher.fetchUser().map { $0.name }
    }
    
}
