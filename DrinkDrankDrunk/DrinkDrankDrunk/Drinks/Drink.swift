//
//  Drink.swift
//  DrinkDrankDrunk
//
//  Created by Diana on 10/09/2021.
//

import Foundation

typealias PLN = Int
typealias Ml = Double

class Drink {
    
    let name: String
    let price: PLN
    let volume: Ml
    
    init(name: String, price: PLN, volume: Ml) {
        self.name = name
        self.price = price
        self.volume = volume
    }
}
