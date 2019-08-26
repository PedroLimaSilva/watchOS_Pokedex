//
//  Pokemon.swift
//  Pokedex WatchKit Extension
//
//  Created by Pedro Lima e Silva on 25/08/2019.
//  Copyright © 2019 Pedro Lima e Silva. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Pokemon: Hashable, Codable, Identifiable {
    var id: String
    var number: Int
    var name: String
    var spritePC: String
    var sprites: [String]
    var pkType: [PokemonType]
    init(id: String, number: Int, name: String, spritePC: String, pkType: [PokemonType]){
        self.id = id
        self.number = number
        self.name = name
        self.spritePC = spritePC
        self.pkType = pkType
        self.sprites = [
            "-detail",
            "-shiny"
        ]
    }
    init(id: String, number: Int, name: String, spritePC: String, sprites: [String], pkType: [PokemonType]){
        self.id = id
        self.number = number
        self.name = name
        self.spritePC = spritePC
        self.pkType = pkType
        self.sprites = sprites
        self.sprites.insert(contentsOf: ["-detail", "-shiny"], at: 0)
    }
}

extension String {
    func capitalize() -> String {
      return prefix(1).uppercased() + self.lowercased().dropFirst()
    }

    mutating func capitalize() {
      self = self.capitalize()
    }
}

struct PokemonType: Hashable, Codable, Identifiable {
    var id: String
    var name: String
    init(id: String){
        self.id = id.lowercased()
        self.name = id.capitalize()
    }
}
