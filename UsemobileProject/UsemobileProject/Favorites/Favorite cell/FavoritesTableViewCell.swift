//
//  FavoritesTableViewCell.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 18/06/22.
//

import UIKit

class FavoritesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starButtonOutlet: UIButton!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        setupUI()
    }
    
    @IBAction func starButtonAction(_ sender: Any) {
        
        buttonStarNoColor()
    }
    
    private func buttonStarNoColor() {

        guard let imageNoColor: UIImage = UIImage(named: "Vector-2") else { return }
        
        starButtonOutlet.setImage(imageNoColor, for: .normal)
        
        print("Linha tirada de favoritos")
        
    }
    
    
    private func setupUI() {
        
        animalImage.layer.cornerRadius = 8
    }
}
