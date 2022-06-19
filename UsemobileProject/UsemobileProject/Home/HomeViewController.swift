//
//  HomeViewController.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 17/06/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var HometableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraTableView()

       print("Teste")
    }
    
    func configuraTableView(){
        
        HometableView.dataSource = self
        HometableView.delegate = self
        HometableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
    }


}


extension HomeViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath)
        cell.textLabel?.text = "teste"
        return cell
        
    }
    
    
    
}

