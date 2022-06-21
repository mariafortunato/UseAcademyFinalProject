//
//  FavoritesViewController.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 17/06/22.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    var colorBlue: UIColor = UIColor(red: 0.27, green: 0.733, blue: 0.938, alpha: 1)
    
    private let favoritesTableViewCell = "FavoritesTableViewCell"

    @IBOutlet weak var favoriteTableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configuraTableView()
    }
    override func viewWillAppear(_ animated: Bool) {
        
        navigationItem.title = "Favoritos"
        navigationController?.navigationBar.tintColor = colorBlue
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: colorBlue]

    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationItem.title = ""
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

