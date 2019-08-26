//
//  Pokemon.swift
//  Pokedex WatchKit Extension
//
//  Created by Pedro Lima e Silva on 25/08/2019.
//  Copyright © 2019 Pedro Lima e Silva. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Pokemon: Hashable, Codable {
    var id: Int
    var name: String
    fileprivate var imageName: String
}
