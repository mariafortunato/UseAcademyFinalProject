//
//  AnimalsModel.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 18/06/22.
//

import Foundation

struct Animal: Decodable{
    
    let items:[Items?]
    
}

struct Items: Decodable{
    
    var id: String?
    var name: String?
    var description: String?
    var age: Int?
    var species: String?
    var image: String?
    var created_at: String?
    var updated_at: String?
    
    init(){ }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case description = "description"
        case age = "age"
        case species = "species"
        case image = "image"
        case created_at = "crested_at"
        case updated_at = "updated_at"
    
}
}
