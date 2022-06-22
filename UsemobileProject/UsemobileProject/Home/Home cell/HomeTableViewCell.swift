//
//  HomeTableViewCell.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 18/06/22.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
//    var filmesFavoritos: [String] = []   Gisele
    
    var isFavorited: Bool = false
    
    private let userDefaults = UserDefaults.standard
    private var favoritesDict: [String: Any] = [:]
    private var favoritesArray: [Any] = []
    private var imageString: String = ""

    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        
        super.setSelected(selected, animated: animated)

       
    }
    
    @IBAction func favoriteButton(_ sender: Any){
        
        if isFavorited {
            buttonStarNoColor()
            
            
        } else {
            buttonStarColor()
            saveFavorites()
        }
        
        //Giselle
//        if filmesFavoritos.contains(nameLabel.text ?? "") {
//            Desfavoritar()
//        } else {
//            favoritar()
//        }
        
        
    }
    private func buttonStarColor() {

        guard let imageColor: UIImage = UIImage(named: "Vector") else { return }
        
        favoriteButton.setImage(imageColor, for: .normal)
        isFavorited = true
        
    }
    
    private func buttonStarNoColor() {

        guard let imageNoColor: UIImage = UIImage(named: "Vector-2") else { return }
        
        favoriteButton.setImage(imageNoColor, for: .disabled)
        isFavorited = false
    }
    
    private func saveFavorites() {
        guard let name = nameLabel.text, let description = descriptionLabel.text else { return }
        favoritesArray = userDefaults.value(forKey: "favoritesArray") as? [[String: Any]] ?? []
        favoritesDict = ["name": name, "description": description, "image": imageString]
        favoritesArray.append(favoritesDict)
        userDefaults.set(favoritesArray, forKey: "favoritesArray")
        print(userDefaults.value(forKey: "favoritesArray"))
    }
   
    func setupUI(items: Items) {
        
        animalImage.layer.cornerRadius = 8
        
        nameLabel.text = items.name
        descriptionLabel.text = items.description
        
        guard let url = URL(string: items.image ?? "fotoBranca") else { return }
        animalImage.loadImage(url: url)
    }
    
    //Gisele
//    private func Desfavoritar() {
//
//        guard let imageNoColor: UIImage = UIImage(named: "Vector-2"), let nome = nameLabel.text,let indice = filmesFavoritos.firstIndex(of: nome)  else { return }
//
//        favoriteButton.setImage(imageNoColor, for: .normal)
//        filmesFavoritos.remove(at: indice)
//        print("Linha tirada de favoritos")
//
//    }
//
//    private func favoritar() {
//
//        guard let imageNoColor: UIImage = UIImage(named: "Vector"), let nome = nameLabel.text else { return }
//
//        favoriteButton.setImage(imageNoColor, for: .normal)
//
//        filmesFavoritos.append(nome)
//        print("favoritado!")
//    }
    
    
//    private func userDefaults() {
//    //        UserDefaults.standard.setValue("Essa é uma aula do bootcamp", forKey: "frase")
//    //        // procurar com esse id
//    //        guard let frase = UserDefaults.standard.string(forKey: "frase") else {return}
//
//            let dev = Developer1(name: "Valeria", age: 18)
//
//            UserDefaults.standard.set(1, forKey: "developerDefaults")
//
//        }
    
}
