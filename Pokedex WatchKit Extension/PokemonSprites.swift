//
//  PokemonSprites.swift
//  Pokedex WatchKit Extension
//
//  Created by Pedro Lima e Silva on 26/08/2019.
//  Copyright © 2019 Pedro Lima e Silva. All rights reserved.
//

import SwiftUI



struct PokemonSprites: View {
    var pokemon: Pokemon
    var sprites: [String]
    var shinies: [String]
    init(pokemon: Pokemon) {
        self.pokemon = pokemon
        sprites = pokemon.sprites
        sprites.insert("", at: 0)
        sprites = sprites.map({"\(pokemon.spritePC)\($0)-detail"})
        shinies = pokemon.shinies ?? [String]()
        shinies = shinies.map({"\(pokemon.spritePC)\($0)"})
    }
    var body: some View {
        List {
            ForEach(sprites, id:\.self){ sprite in
                VStack(spacing: -6.0){
                    Text(sprite)
                    PokemonSprite(sprite: sprite)
                }
            }
            Section(header: Text("Shiny Forms")){
                ForEach(shinies, id:\.self){ sprite in
                    VStack{
                        Text(sprite)
                        PokemonSprite(sprite: sprite)
                    }
                }
            }
        }
        .navigationBarTitle(pokemon.name)
    }
}


struct PokemonSprites_Previews: PreviewProvider {
    static var previews: some View {
        PokemonSprites(pokemon: pokemonData[27])
    }
}

struct PokemonSprite: View {
    var sprite: String
    var body: some View {
        VStack(alignment: .center) {
            Image(sprite)
                .resizable()
                .frame(width: 140.0, height: 140.0)
        }
    }
}
