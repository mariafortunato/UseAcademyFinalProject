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
    
    @IBAction func buttonAdd(_ sender: Any) {
      getAnimals()
        postAnimals(name: "testinho", image: "testinho", description: "testinho", species: "testinho", age: "testinho")
    }
    
    private func getAnimals() {
        
        guard let url = URL(string: "https://bootcamp-ios-api.herokuapp.com/api/v1/animals") else { return }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let response = response as? HTTPURLResponse {
                print("Status Code: ", response.statusCode)
            }
            
            
            
        }.resume()
        
    }
    
    private func postAnimals(name: String, image: String, description: String, species: String, age: String) {
        
        guard let url = URL(string: "https://bootcamp-ios-api.herokuapp.com/api/v1/animals") else { return }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let body = ["name": name,
                    "image": image,
                    "description": description,
                    "species": species,
                    "age": age]
        
        let jsonBody = try? JSONSerialization.data(withJSONObject: body, options: .fragmentsAllowed)
        
        request.httpBody = jsonBody
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let response = response as? HTTPURLResponse {
                print("Status Code:", response.statusCode)
            }
            guard let data = data else { return }
            let stringedData = String(data: data, encoding: .utf8)
            print(stringedData)
            
        }.resume()
    }
    
}
