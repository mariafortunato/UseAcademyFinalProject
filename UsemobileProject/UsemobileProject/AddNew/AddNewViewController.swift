//
//  AddNewViewController.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 17/06/22.
//

import UIKit

struct AddNewSpecies : Decodable {
    let nome: String?
    let image: String?
    let description: String?
    let species: String?
    let age: Int?
}

class AddNewViewController: UIViewController {
    
    var addNewSpecies: AddNewSpecies?

    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldLink: UITextField!
    @IBOutlet weak var textFieldDescription: UITextField!
    @IBOutlet weak var textFieldSpecies: UITextField!
    @IBOutlet weak var textFieldAge: UITextField!
    
    
    @IBOutlet weak var buttonAdd: UIButton!
    
    // MARK: Overrides
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }


    // MARK: Setups
    private func setupUI() {
        view.backgroundColor = .white
        setupComponents()
        setupConstraints()
    }
    
    private func setupComponents() {
        view.addSubview(textFieldName)
        view.addSubview(textFieldLink)
        view.addSubview(textFieldDescription)
        view.addSubview(textFieldSpecies)
        view.addSubview(textFieldAge)
        
        view.addSubview(buttonAdd)
    }
    
    private func setupConstraints() {
        textFieldName.heightAnchor.constraint(equalToConstant: 56).isActive = true
        textFieldLink.heightAnchor.constraint(equalToConstant: 56).isActive = true
        textFieldDescription.heightAnchor.constraint(equalToConstant: 56).isActive = true
        textFieldSpecies.heightAnchor.constraint(equalToConstant: 56).isActive = true
        textFieldAge.heightAnchor.constraint(equalToConstant: 56).isActive = true
        
        buttonAdd.heightAnchor.constraint(equalToConstant: 56).isActive = true
        buttonAdd.layer.cornerRadius = 8.0
    }
    
}
