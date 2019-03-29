//
//  AppDelegate.swift
//  SingleViewDemo
//
//  Created by Dariy Kordiyak on 3/15/19.
//  Copyright © 2019 Dariy Kordiyak. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // MARK: - Properties

    var window: UIWindow?
    
    // MARK: - Delegate

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let contentController = ContentViewController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = contentController
        window?.makeKeyAndVisible()
        
        let appCoorinator = AppCoordinator(contentController: contentController,
                                           moduleFactory: ModuleFactory())
        appCoorinator.push(to: .first)
        
        return true
    }


}

