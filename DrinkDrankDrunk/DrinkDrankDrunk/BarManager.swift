//
//  BarManager.swift
//  DrinkDrankDrunk
//
//  Created by Diana on 10/09/2021.
//

import Foundation

class BarManager {
    private var purchases:[Drink] = []
    
    func buy(drink: Drink) {
    purchases.append(drink)
    }
    
    private func getRevenue() -> PLN {
        return purchases.reduce(0, {result, drink in result + drink.price })
    }
    
    private func getVoleme() -> Ml{
        return purchases.reduce(0, { result, drink in result + drink.volume})
    }
    
    private func getRevenueDescription() -> String {
        "Выручка \(getRevenue()) злотых"
    }
    private func getVolumeDescription() -> String {
        "Выпито \(getVoleme()) мл"
    }
    private func getPurchasesDescription() -> String {
        guard !purchases.isEmpty else { return ""}
        return purchases.map({ "\($0.name) - \($0.price) злотых / \($0.volume) мл"}).joined(separator: "\n")
    }
    var revenueDescription: String {
        getRevenueDescription()
    }
    var volumeDescription: String {
        getVolumeDescription()
    }
    var purchasesDescription: String {
        getPurchasesDescription()
    }
}
