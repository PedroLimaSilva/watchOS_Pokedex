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
    var body: some View {
        List{
            VStack(alignment: .center) {
                Image(pokemon.spritePC + "-detail")
                    .resizable()
                    .frame(width: 140.0, height: 140.0)
            }
            if pokemon.sprites.firstIndex(of: "-f") != nil {
                VStack(alignment: .center) {
                    Image(pokemon.spritePC + "-f-detail")
                       .resizable()
                        .frame(width: 140.0, height: 140.0)
                }
            }

            if pokemon.sprites.firstIndex(of: "-shiny") != nil {
                Section(header: Text("Shiny Forms")){
                    VStack(alignment: .center) {
                        Image(pokemon.spritePC + "-shiny")
                            .resizable()
                            .frame(width: 140.0, height: 140.0)
                    }
                    if pokemon.sprites.firstIndex(of: "-f") != nil {
                        VStack(alignment: .center) {
                            Image(pokemon.spritePC + "-f-shiny")
                                .resizable()
                                .frame(width: 140.0, height: 140.0)
                        }
                    }
                }
            }
           
        }
        .navigationBarTitle(pokemon.name)
    }
}

struct PokemonSprites_Previews: PreviewProvider {
    static var previews: some View {
        PokemonSprites(pokemon: pokemonData[28])
    }
}
