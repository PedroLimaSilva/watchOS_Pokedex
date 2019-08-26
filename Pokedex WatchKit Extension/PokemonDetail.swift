//
//  PokemonDetail.swift
//  Pokedex WatchKit Extension
//
//  Created by Pedro Lima e Silva on 25/08/2019.
//  Copyright © 2019 Pedro Lima e Silva. All rights reserved.
//

import SwiftUI

struct PokemonDetail: View {
    var pokemon: Pokemon
    
    var body: some View {
        List {
            Section(header: Text("Sprites")) {
                NavigationLink(destination: PokemonSprites(pokemon: pokemon)) {
                    Image(pokemon.spritePC + "-detail")
                        .resizable()
                        .frame(width: 140, height: 140)
                }
            }
            Section(header: Text("Types")) {
                ForEach(pokemon.types, id: \.self) { type in
                    NavigationLink(destination: TypeDetail(pkType: type)) {
                        HStack{
                            Image(type)
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text(type)
                        }
                    }
                }
            }
        }
        .navigationBarTitle(pokemon.name)
    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetail(pokemon: pokemonData[4])
    }
}
