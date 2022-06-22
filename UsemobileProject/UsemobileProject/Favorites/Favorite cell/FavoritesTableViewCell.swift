//
//  FavoritesTableViewCell.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 18/06/22.
//

import UIKit

class FavoritesTableViewCell: UITableViewCell {
    
    var isFavorited: Bool = false
    
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var starButtonOutlet: UIButton!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        setupUI()
    }
    
    @IBAction func starButtonAction(_ sender: Any) {

        if isFavorited {
            buttonStarNoColor()
            //saveFavorites()
            
        } else {
            buttonStarColor()
        }
    }
    private func buttonStarColor() {
        
        guard let imageColor: UIImage = UIImage(named: "Vector") else { return }
        
        starButtonOutlet.setImage(imageColor, for: .normal)
        isFavorited = true
        
    }
    private func buttonStarNoColor() {

        guard let imageNoColor: UIImage = UIImage(named: "Vector-2") else { return }
        
        starButtonOutlet.setImage(imageNoColor, for: .normal)
        isFavorited = false
    }
    
    func preencherLabels(items: Items) {
        
        titleLabel.text = items.name
        descriptionLabel.text = items.description
        
//        guard let url = URL(string: items.image ?? "fotoBranca") else { return }
//        animalImage.loadImage(url: url)
        
    }
    func loadImage(image: String) {
        guard let url = URL(string: image ?? "arara") else { return }
        animalImage.loadImage(url: url) 
    }
    
    private func setupUI() {
        
        animalImage.layer.cornerRadius = 8
        buttonStarColor()
    }
}
