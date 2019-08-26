//
//  HostingController.swift
//  Pokedex WatchKit Extension
//
//  Created by Pedro Lima e Silva on 24/08/2019.
//  Copyright © 2019 Pedro Lima e Silva. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class HostingController: WKHostingController<PokemonList> {
    override var body: PokemonList {
        return PokemonList()
    }
}
