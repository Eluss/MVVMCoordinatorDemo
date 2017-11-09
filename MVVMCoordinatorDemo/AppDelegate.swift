//
//  AppDelegate.swift
//  MVVMCoordinatorDemo
//
//  Created by Eliasz Sawicki on 09/11/2017.
//  Copyright © 2017 Eliasz Sawicki. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var mainNavigationController: UINavigationController!
    var mainFlowController: MainFlowController!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        mainNavigationController = UINavigationController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = mainNavigationController
        window?.makeKeyAndVisible()
        
        mainFlowController = MainFlowController(rootNavigationController: mainNavigationController)
        mainFlowController.startFlow()
        
        return true
    }

}

