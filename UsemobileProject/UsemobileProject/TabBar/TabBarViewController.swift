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
        //------------------- Todas as versões de iOS
        
        // Cor do icone e do texto da Tab selecionada
        tabBar.tintColor = .white
        
        //------------------ Config versões anterior ao do iOS 15
        
        //Cor do icone e do texto da TabBar não selecionada
        tabBar.unselectedItemTintColor = .black
        
        // Cor de fundo da TabBar
        tabBar.isTranslucent = false
        tabBar.barTintColor = .cyan
        
        //---------------- Config iOS 15 e posterior
        
        if #available(iOS 15, *){
            let appearance = UITabBarAppearance()
            
            // Cor do texto das Tabs não selecionadas
            appearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.black]
            
            // Cor dos icones das Tabs não selecionadas
            appearance.stackedLayoutAppearance.normal.iconColor = .black
            
            // Cor de fundo da TabBar
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
