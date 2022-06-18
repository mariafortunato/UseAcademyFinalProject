//
//  FavoritesViewController.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 17/06/22.
//

import UIKit

class FavoritesViewController: UIViewController {
    

    @IBOutlet weak var favoritesTableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

}

extension FavoritesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        return cell
    }
    
    
}

extension FavoritesViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("testando Git")
    }
}
