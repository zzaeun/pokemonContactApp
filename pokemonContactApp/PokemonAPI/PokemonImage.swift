//
//  PokemonImage.swift
//  pokemonContactApp
//
//  Created by 이정은 on 9/30/25.
//

import UIKit


func PokemonImage(from url: URL, into imageView: UIImageView) {
    URLSession.shared.dataTask(with: url) { data, response, error in
        guard let data = data,
              let image = UIImage(data: data) else { return }
        
        DispatchQueue.main.async {
            imageView.image = image
        }
    } .resume()
    
}
