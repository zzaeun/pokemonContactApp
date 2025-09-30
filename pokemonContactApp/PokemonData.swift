//
//  pokemonData.swift
//  pokemonContactApp
//
//  Created by 이정은 on 9/29/25.
//

import UIKit

struct PokemonData: Codable {
    let id: Int
    let name: String
    let height: Int
    let weight: Int
    let sprites: Sprites
}

struct Sprites: Codable {
    let frontDefault: String?
    
    enum CodingKeys: String, CodingKey {
        case frontDefault = "front_default"
    }
}
