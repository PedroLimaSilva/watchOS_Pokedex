//
//  PokemonList.swift
//  Pokedex WatchKit Extension
//
//  Created by Pedro Lima e Silva on 25/08/2019.
//  Copyright © 2019 Pedro Lima e Silva. All rights reserved.
//

import SwiftUI

struct PokemonList: View {
    @State var searchTerm = ""
    func clearSearch() {
        searchTerm = ""
    }
    var body: some View {
        List {
            GeometryReader { geometry in
                HStack(alignment: .center) {
                    TextField("Search", text: self.$searchTerm)
                        .frame(width: geometry.size.width - 15.0, height: geometry.size.height)
                        .position(x: geometry.size.width/2 - 15.0, y: geometry.size.height/2)
                    Button(action: self.clearSearch) {
                        Image("clear")
                            .resizable()
                            .frame(width: 30.0, height: 30.0)
                            .position(x: geometry.size.width - 82.5, y: geometry.size.height/2)
                            .opacity(0.5)
                    }
                }
            }
            
            ForEach(pokemonData.filter{ self.searchTerm.isEmpty ? true : $0.name.localizedCaseInsensitiveContains(self.searchTerm) }){ pokemon in
                NavigationLink(destination: PokemonDetail(pokemon: pokemon)) {
                    PokemonRow(pokemon: pokemon)
                }
            }
        }
        .navigationBarTitle(Text(self.searchTerm.isEmpty ? "All Pokemon" : "\"\(self.searchTerm)\""))
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}
