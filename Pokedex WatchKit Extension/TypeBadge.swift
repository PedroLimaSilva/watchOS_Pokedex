//
//  TypeBadge.swift
//  Pokedex WatchKit Extension
//
//  Created by Pedro Lima e Silva on 25/08/2019.
//  Copyright © 2019 Pedro Lima e Silva. All rights reserved.
//

import SwiftUI

struct TypeBadge: View {
    var pkType: String
    
    var body: some View {
        VStack {
            Image(pkType)
            Text(pkType)
        }
    }
}

struct TypeBadge_Previews: PreviewProvider {
    static var previews: some View {
        TypeBadge(pkType: "normal")
    }
}
