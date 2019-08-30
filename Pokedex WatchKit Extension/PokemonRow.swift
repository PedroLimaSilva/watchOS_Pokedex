//
//  PokemonRow.swift
//  Pokedex WatchKit Extension
//
//  Created by Pedro Lima e Silva on 25/08/2019.
//  Copyright © 2019 Pedro Lima e Silva. All rights reserved.
//

import SwiftUI

struct PokemonRow: View {
    var pokemon: Pokemon

    var body: some View {
        HStack {
            Image(pokemon.spritePC)
                .frame(width: 30, height: 30)
            VStack(alignment: .leading) {
                Text(pokemon.printableNumber)
                    .font(.footnote)
                    .foregroundColor(Color.gray)
                Text(pokemon.name)
            }
        }
    }
}

struct PokemonRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PokemonRow(pokemon: pokemonData[0])
            PokemonRow(pokemon: pokemonData[1])
        }
    }
}
