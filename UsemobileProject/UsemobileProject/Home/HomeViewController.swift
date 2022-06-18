//
//  HomeViewController.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 17/06/22.
//

import UIKit

class HomeViewController: UIViewController {
        
    var animais: Animais
    
    
    init(animais: Animais = .init()){
        self.animais = animais
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    var arrayTableView: [String] = ["1", "2", "3"]

    @IBOutlet weak var homeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        
       
    }
}
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    private func setUpTableView(){
        
        homeTableView.dataSource = self
        homeTableView.delegate = self
        homeTableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeTableViewCell")
        homeTableView.isScrollEnabled = false
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        print("linha: \([indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayTableView.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath)
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(verificarStateCell(_:)))
        cell.addGestureRecognizer(longPress)
        
    
        return cell
    }
    
   
    
    
    @objc func verificarStateCell(_ gesture: UILongPressGestureRecognizer) {
       
        if gesture.state == .began {
            
            let Alerta = gesture.view as! UITableViewCell
            
            guard let indexPath = homeTableView.indexPath(for: Alerta) else { return }
            
            let arrayTableView = arrayTableView[indexPath.row]

            print(arrayTableView)
        }
    }
    
}
