//
//  TabBarViewController.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 18/06/22.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViewControllers([homeController(), addNewController(), favoritesController()], animated: true)
        setupTabBar()
        
    }
    private func setupTabBar() {
        
        tabBar.tintColor = .white
        tabBar.unselectedItemTintColor = .black
        tabBar.isTranslucent = false
        tabBar.barTintColor = .cyan
        
        
        if #available(iOS 15, *){
            
            let appearance = UITabBarAppearance()
            appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.black]
            appearance.stackedLayoutAppearance.normal.iconColor = .black
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = UIColor(red: 4.0/255.0, green: 255.0/255.0, blue: 255.0/255.0, alpha: 1)
            UITabBar.appearance().standardAppearance = appearance
            UITabBar.appearance().scrollEdgeAppearance = appearance
            
        }
    }
    
    private func homeController() -> UIViewController {
        let homeController = HomeViewController()
        
        homeController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        
        return homeController
    }
    private func addNewController() -> UIViewController {
        let addNewController = AddNewViewController()
        
        addNewController.tabBarItem = UITabBarItem(title: "Cadastrar", image: UIImage(systemName: "plus.circle"), tag: 0)
        
        return addNewController
    }
    
    private func favoritesController() -> UIViewController {
        let favoritesController = FavoritesViewController()
        
        favoritesController.tabBarItem = UITabBarItem(title: "Favoritos", image: UIImage(systemName: "star"), tag: 0)
        
        return favoritesController
    }
    
}
