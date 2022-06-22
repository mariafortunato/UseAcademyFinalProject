import Foundation

struct Animal: Decodable{
    
    var items:[Items?]
    
}

struct Items: Decodable{
    
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
