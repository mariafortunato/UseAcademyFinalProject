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
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.tintColor = UIColor(red: 0.27, green: 0.733, blue: 0.938, alpha: 1)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(red: 0.27, green: 0.733, blue: 0.938, alpha: 1)]
        navigationController?.navigationBar.topItem?.title = "Favoritos"

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
}

extension FavoritesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: favoritesTableViewCell, for: indexPath)

        return cell
    }

}
