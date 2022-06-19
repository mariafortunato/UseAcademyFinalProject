//
//  HomeTableViewCell.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 18/06/22.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var favoriteButton: UIButton!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupUI()
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
    @IBAction func favoriteButton(_ sender: Any) {
        buttonStarColor()
    }
    
    private func buttonStarColor() {

        guard let imageNoColor: UIImage = UIImage(named: "Vector") else { return }
        
        favoriteButton.setImage(imageNoColor, for: .normal)
        
        print("favoritado!")
    }
    
   
    private func setupUI() {
        
        animalImage.layer.cornerRadius = 8
    }
    
    
    private func preencherCell(){


}
    
    
}
