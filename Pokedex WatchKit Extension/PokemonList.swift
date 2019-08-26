//
//  PokemonList.swift
//  Pokedex WatchKit Extension
//
//  Created by Pedro Lima e Silva on 25/08/2019.
//  Copyright © 2019 Pedro Lima e Silva. All rights reserved.
//

import SwiftUI

struct PokemonList: View {
    var body: some View {
        List {
            ForEach(pokemonData){ pokemon in
                NavigationLink(destination: PokemonDetail(pokemon: pokemon)){
                     PokemonRow(pokemon: pokemon)
                }
            }
        }
        .navigationBarTitle(Text("All Pokemon"))
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}
