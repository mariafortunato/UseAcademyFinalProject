//
//  FavoritesViewController.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 17/06/22.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    private let favoritesTableViewCell = "FavoritesTableViewCell"

    @IBOutlet weak var favoriteTableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configuraTableView()
    }
    
    private func configuraTableView() {
        favoriteTableView?.dataSource = self
        favoriteTableView?.delegate = self
        favoriteTableView?.showsVerticalScrollIndicator = false // a barra lateral
        favoriteTableView?.register(UINib(nibName: favoritesTableViewCell, bundle: nil), forCellReuseIdentifier: favoritesTableViewCell)
    }

}

extension FavoritesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: favoritesTableViewCell, for: indexPath)
        
        cell.textLabel?.text = ""
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("testando Git")
    }
    
    
}

