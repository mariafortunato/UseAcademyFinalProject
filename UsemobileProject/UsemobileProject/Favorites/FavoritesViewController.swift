//
//  FavoritesViewController.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 17/06/22.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    private let userDefaults = UserDefaults.standard
    var favoritesArray: [[String: Any]] = [[:]]
    private let favoritesTableViewCell = "FavoritesTableViewCell"
    
    @IBOutlet weak var favoriteTableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadFavorites()
        configuraTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.tintColor = UIColor(red: 0.27, green: 0.733, blue: 0.938, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(red: 0.27, green: 0.733, blue: 0.938, alpha: 1)]
        navigationController?.navigationBar.topItem?.title = "Favorites"
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        navigationController?.navigationBar.topItem?.title = ""
    }

    private func configuraTableView() {
        favoriteTableView?.dataSource = self
        favoriteTableView?.delegate = self
        favoriteTableView?.showsVerticalScrollIndicator = false // a barra lateral
        favoriteTableView?.register(UINib(nibName: favoritesTableViewCell, bundle: nil), forCellReuseIdentifier: favoritesTableViewCell)
        
    }

    func loadFavorites() {
        favoritesArray = userDefaults.value(forKey: "favoritesArray") as? [[String: Any]] ?? [[:]]
    }
}

extension FavoritesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return favoritesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: favoritesTableViewCell, for: indexPath) as? FavoritesTableViewCell else { return UITableViewCell() }
        
        cell.titleLabel?.text = favoritesArray[indexPath.row]["name"] as? String
        cell.descriptionLabel.text = favoritesArray[indexPath.row]["description"] as? String
        cell.loadImage(image: favoritesArray[indexPath.row]["image"] as? String ?? "arara")
   
        return cell
    }
    
}
