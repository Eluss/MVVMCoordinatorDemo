//
//  UserFetcher.swift
//  MVVMCoordinatorDemo
//
//  Created by Eliasz Sawicki on 15/11/2017.
//  Copyright © 2017 Eliasz Sawicki. All rights reserved.
//

import Foundation
import ReactiveSwift
import enum Result.NoError

enum UserFetcherError: Error {
    case NoExistingUser
}

protocol UserFetcher {
    func fetchUser() -> SignalProducer<User, NoError>
}

class FakeUserFetcher: UserFetcher {
    
    func fetchUser() -> SignalProducer<User, NoError> {
        return SignalProducer { observer, _ in
            DispatchQueue.global(qos: .background).asyncAfter(deadline: .now() + 1, execute: {
                let user = User(name: "Tester")
                observer.send(value: user)
                observer.sendCompleted()
            })
        }
    }
    
}
