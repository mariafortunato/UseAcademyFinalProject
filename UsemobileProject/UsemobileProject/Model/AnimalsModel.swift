import Foundation


struct Animal: Decodable{
    var items:[Items?]
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
    

    var id: String?
    var name: String?
    var description: String?
    var age: StringOrInt?
    var species: String?
    var image: String?
    var created_at: String?
    var updated_at: String?

    
}

enum StringOrInt: Decodable {
    
    case string(String)
    case int(Int)
    
    init(from decoder: Decoder) throws {
        if let int = try? decoder.singleValueContainer().decode(Int.self) {
            self = .int(int)
            return
        }
        if let string = try? decoder.singleValueContainer().decode(String.self) {
            self = .string(string)
            return
        }
        throw Error.couldNotFindStringOrInt
    }
    enum Error: Swift.Error {
        case couldNotFindStringOrInt
    }
}
