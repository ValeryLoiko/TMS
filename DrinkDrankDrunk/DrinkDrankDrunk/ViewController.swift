//
//  ViewController.swift
//  DrinkDrankDrunk
//
//  Created by Diana on 10/09/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var menuLabel: UILabel!
    @IBOutlet weak var volumeLabel: UILabel!
    @IBOutlet weak var revenueLabel: UILabel!
    @IBOutlet weak var transactionsLabel: UILabel!
    
    private let barManager = BarManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUserInterface()
        // Do any additional setup after loading the view.
    }
    
    private func updateUserInterface() {
        volumeLabel.text = barManager.volumeDescription
        revenueLabel.text = barManager.revenueDescription
        transactionsLabel.text = barManager.purchasesDescription
        
    }

    @IBAction func coffeeButton(_ sender: Any) {
        barManager.buy(drink: Coffee())
        updateUserInterface()
    }
    
    @IBAction func sodaButton(_ sender: Any) {
        barManager.buy(drink: Soda())
        updateUserInterface()
    }
    
    @IBAction func beerButton(_ sender: Any) {
        barManager.buy(drink: Beer())
        updateUserInterface()
    }
}

