//
//  PokemonAPI.swift
//  pokemonContactApp
//
//  Created by 이정은 on 9/29/25.
//

import UIKit

func PokemonAPI (imageView: UIImageView) {
    
    let randomID = Int.random(in: 1...1000)
    let urlString = "https://pokeapi.co/api/v2/pokemon/\(randomID)"
    let method = "GET"
    
    // url 생성
    guard let url = URL(string: urlString) else {
        print("Error")
        return
    }

    // request 생성
    var request = URLRequest(url: url)
    request.httpMethod = method
    
    // URLSession 생성
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        guard let data = data else { return }
            
        do {
            let model = try JSONDecoder().decode(PokemonData.self, from: data)
            
            // 이미지 불러오기
            if let spriteURL = model.sprites.frontDefault,
               let imageURL = URL(string: spriteURL) {
                
                PokemonImage(from: imageURL, into: imageView)
            } else {
                print("이미지 불러오기 실패")
            }
            
        } catch {
            print("디코딩 실패")
        }
    } .resume()
    
}
