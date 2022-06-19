//
//  AnimalsViewModel.swift
//  UsemobileProject
//
//  Created by Maria Alice Rodrigues Fortunato on 18/06/22.
//

import Foundation

//MARK: Properties

var itens: Animais?
var goToAniamais: ( () -> Void)?

// MARK: Services

func getInformacoes(with zipCode: String) {


    guard let url = URL(string: "https://bootcamp-ios-api.herokuapp.com/api/v1/animals") else { return }

    let request = URLRequest(url: url)

    URLSession.shared.dataTask(with: request) { data, response, error in

        if let response = response as? HTTPURLResponse {
            print("Status Code: ", response.statusCode)
        }

        guard let data = data else { return }
        do {
            let animais = try JSONDecoder().decode(Animais.self, from: data)
            itens = animais
        } catch {
            print(error.localizedDescription)
        }
        DispatchQueue.main.async {
            goToAniamais?()
        }

    }.resume()
    
    


}



