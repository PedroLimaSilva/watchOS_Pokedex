//
//  TypeDetail.swift
//  Pokedex WatchKit Extension
//
//  Created by Pedro Lima e Silva on 25/08/2019.
//  Copyright © 2019 Pedro Lima e Silva. All rights reserved.
//

import SwiftUI

struct TypeDetail: View {
    var pkType: PokemonType
    var body: some View {
        VStack {
            Image(pkType.id)
            Text(pkType.name)
        }
        .navigationBarTitle(pkType.name)
    }
}

struct TypeDetail_Previews: PreviewProvider {
    static var previews: some View {
        TypeDetail(pkType: PokemonType(id: "Normal"))
    }
}
