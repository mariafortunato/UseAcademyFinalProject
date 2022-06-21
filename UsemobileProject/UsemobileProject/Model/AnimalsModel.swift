//
//  AnimalsModel.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 18/06/22.
//

import Foundation

struct Animal: Decodable {
    let items: [Items]
}

struct Items: Decodable {
    
    let id: String?
    let name: String?
    let description: String?
    let age: Int?
    let species: String?
    let image: String?
    let created_at: String?
    let updated_at: String?
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        let ageString = Int((try? container.decode(String?.self, forKey: .age)) ?? "")
        
        id = try? container.decode(String?.self, forKey: .id)
        name = try? container.decode(String?.self, forKey: .name)
        description = try? container.decode(String?.self, forKey: .description)
        age = (try? container.decode(Int?.self, forKey: .age)) ?? ageString
        species = try? container.decode(String?.self, forKey: .species)
        image = try? container.decode(String?.self, forKey: .image)
        created_at = try? container.decode(String?.self, forKey: .created_at)
        updated_at = try? container.decode(String?.self, forKey: .updated_at)
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case description
        case age
        case species
        case image
        case created_at
        case updated_at
    }
    
}
