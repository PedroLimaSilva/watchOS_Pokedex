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
    var types: [PokemonType]
    init(id: String, number: Int, name: String, spritePC: String, types: [PokemonType]){
        self.id = id
        self.number = number
        self.name = name
        self.spritePC = spritePC
        self.types = types
        self.sprites = []
    }
    init(id: String, number: Int, name: String, spritePC: String, sprites: [String], types: [PokemonType]){
        self.id = id
        self.number = number
        self.name = name
        self.spritePC = spritePC
        self.types = types
        self.sprites = sprites
    }
    init(id: String, number: Int, name: String, spritePC: String, sprites: [String], shinies: [String], types: [PokemonType]){
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

enum PokemonTypes: String {
    case Bug = "Bug"
    case Dark = "Dark"
    case Dragon = "Dragon"
    case Electric = "Electric"
    case Fairy = "Fairy"
    case Fighting = "Fighting"
    case Fire = "Fire"
    case Flying = "Flying"
    case Ghost = "Ghost"
    case Grass = "Grass"
    case Ground = "Ground"
    case Ice = "Ice"
    case Normal = "Normal"
    case Poison = "Poison"
    case Psychic = "Psychic"
    case Rock = "Rock"
    case Steel = "Steel"
    case Water = "Water"
}

struct PokemonType: Hashable, Codable, Identifiable {
    var id: String
    init(id: String){
        self.id = id
    }
    
    var name: String {
        return self.id.capitalize();
    }
    
    var color: UIColor {
        if let type = PokemonTypes(rawValue: self.id) {
            switch type {
                case .Bug:
                    return UIColor(red:0.67, green:0.73, blue:0.13, alpha:0.5) // #aabb22
                case .Dark:
                    return UIColor(red:0.47, green:0.33, blue:0.27, alpha:0.5) // #775544
                case .Dragon:
                    return UIColor(red:0.47, green:0.40, blue:0.93, alpha:0.5) // #7766ee
                case .Electric:
                    return UIColor(red:1.00, green:0.80, blue:0.20, alpha:0.5) // #ffcc33
                case .Fairy:
                    return UIColor(red:0.93, green:0.60, blue:0.93, alpha:0.5) // #ee99ee
                case .Fighting:
                    return UIColor(red:0.73, green:0.33, blue:0.27, alpha:0.5) // #bb5544
                case .Fire:
                    return UIColor(red:1.00, green:0.27, blue:0.13, alpha:0.5) // #ff4422
                case .Flying:
                    return UIColor(red:0.53, green:0.60, blue:1.00, alpha:0.5) // #8899ff
                case .Ghost:
                    return UIColor(red:0.40, green:0.40, blue:0.73, alpha:0.5) // #6666bb
                case .Grass:
                    return UIColor(red:0.47, green:0.80, blue:0.33, alpha:0.5) // #77cc55
                case .Ground:
                    return UIColor(red:0.87, green:0.73, blue:0.33, alpha:0.5) // #ddbb55
                case .Ice:
                    return UIColor(red:0.40, green:0.80, blue:1.00, alpha:0.5) // #66ccff
                case .Normal:
                    return UIColor(red:0.67, green:0.67, blue:0.60, alpha:0.5) // #aaaa99
                case .Poison:
                    return UIColor(red:0.67, green:0.33, blue:0.60, alpha:0.5) // #aa5599
                case .Psychic:
                    return UIColor(red:1.00, green:0.33, blue:0.60, alpha:0.5) // #ff5599
                case .Rock:
                    return UIColor(red:0.73, green:0.67, blue:0.40, alpha:0.5) // #bbaa66
                case .Steel:
                    return UIColor(red:0.67, green:0.67, blue:0.73, alpha:0.5) // #aaaabb
                case .Water:
                    return UIColor(red:0.20, green:0.60, blue:1.00, alpha:0.5) // #3399ff
            }
        }
        return UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.5)
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
