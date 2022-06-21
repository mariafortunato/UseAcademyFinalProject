//
//  AnimalsViewModel.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 18/06/22.
//

import Foundation

class AnimalsViewModel {
    
    //MARK: Properties

    var animals: Animal?
    var notificacao: ( () -> Void)?

    // MARK: Services

    func getAnimals() {


        guard let url = URL(string: "https://bootcamp-ios-api.herokuapp.com/api/v1/animals") else { return }
        let request = URLRequest(url: url)

        URLSession.shared.dataTask(with: request) { [self] data, response, error in

            if let response = response as? HTTPURLResponse {
                print("Status Code: ", response.statusCode)
            }

            guard let data = data else { return }
            do {
                let animais = try JSONDecoder().decode(Animal.self, from: data)
                self.animals = animais
            } catch {
                print(error.localizedDescription)
            }
            DispatchQueue.main.async {
                notificacao?()
                
            }
            
            print (animals)
            
        }.resume()
        
    

    }




}

