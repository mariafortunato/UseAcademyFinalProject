//
//  DetailsViewController.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 18/06/22.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var colorBlue: UIColor = UIColor(red: 0.27, green: 0.733, blue: 0.938, alpha: 1)
    
    @IBOutlet weak var imageAnimal: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var specieLabel: UILabel!
    @IBOutlet weak var descriptionsLabel: UILabel!
    
//    let nameAnimal: String
//    let ageAnimal: Int
//    let descriptions: String
//    let specie: String
//    
//    init(nameAnimal: String, ageAnimal: Int, descriptions: String, specie: String) {
//        self.nameAnimal = nameAnimal
//        self.ageAnimal = ageAnimal
//        self.descriptions = descriptions
//        self.specie = specie
//        super.init(nibName: nil, bundle: nil)
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = "Detalhes"
        navigationController?.navigationBar.tintColor = colorBlue
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: colorBlue]
    }
    override func viewWillDisappear(_ animated: Bool) {
        navigationItem.title = ""
    }
    
    private func setupUI() {
        imageAnimal.layer.cornerRadius = 8
    }


}
