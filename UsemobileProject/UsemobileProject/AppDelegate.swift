//
//  AppDelegate.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 17/06/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let tabBar = TabBarViewController()
        let navigationController = UINavigationController(rootViewController: tabBar)
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }


}

