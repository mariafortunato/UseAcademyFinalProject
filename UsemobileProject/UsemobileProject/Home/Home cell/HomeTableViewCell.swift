//
//  HomeTableViewCell.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 18/06/22.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    var filmesFavoritos: [String] = []
    

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
        buttonStarColor()
        
    }
    
    private func buttonStarColor() {

        guard let imageNoColor: UIImage = UIImage(named: "Vector") else { return }
        
        favoriteButton.setImage(imageNoColor, for: .normal)
        
        print("favoritado!")
    }
    
   
    func setupUI(items: Items) {
        
        animalImage.layer.cornerRadius = 8
        nameLabel.text = items.name
//        animalImage.image= items.image
        descriptionLabel.text = items.description
    }
    
    
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
