//
//  AppDelegate.swift
//  CoordinatorTry
//
//  Created by Onur Emren on 19.09.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let navVC = UINavigationController()

        let coordinator = MainCoordinator()
        coordinator.navigationController = navVC
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = navVC
        window.makeKeyAndVisible()
        self.window = window
        coordinator.start()
        
        return true
    }
}

