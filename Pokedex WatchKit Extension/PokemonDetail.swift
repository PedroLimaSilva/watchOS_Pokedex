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
                        .frame(width: 140.0, height: 140.0)
                }
            }
            Section(header: Text("Types")) {
                ForEach(pokemon.types) { type in
                    NavigationLink(destination: TypeDetail(pkType: type)) {
                        HStack{
                            Image(type.name)
                                .resizable()
                                .frame(width: 25, height: 25)
                            Text(type.name)
                        }
                    }
                    .listRowPlatterColor(Color(type.color))
                }
            }
        }
        .navigationBarTitle("\(pokemon.printableNumber) \(pokemon.name)")
    }
}

struct PokemonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetail(pokemon: pokemonData[4])
    }
}
