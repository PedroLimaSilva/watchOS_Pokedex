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
    var shinies: [String]?
    var types: [String]
    init(id: String, number: Int, name: String, spritePC: String, types: [String]){
        self.id = id
        self.number = number
        self.name = name
        self.spritePC = spritePC
        self.types = types
        self.sprites = []
    }
    init(id: String, number: Int, name: String, spritePC: String, sprites: [String], types: [String]){
        self.id = id
        self.number = number
        self.name = name
        self.spritePC = spritePC
        self.types = types
        self.sprites = sprites
    }
    init(id: String, number: Int, name: String, spritePC: String, sprites: [String], shinies: [String], types: [String]){
        self.id = id
        self.number = number
        self.name = name
        self.spritePC = spritePC
        self.types = types
        self.sprites = sprites
        self.shinies = shinies
    }
    
    var printableNumber: String {
        if self.number < 10 {
            return "#00\(self.number)"
        } else if self.number < 100 {
            return "#0\(self.number)"
        } else {
            return "#\(self.number)"
        }
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
