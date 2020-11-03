//
//  Hotel.swift
//  DesafioReservaHotel
//
//  Created by Marcela Saidel on 09/10/20.
//

import Foundation

class Hotel {
    
    var name: String
    var rate: Int
    var tax: Tax //[Tax]
    var taxReward: Tax //[Tax]
    
    init(name: String, rate: Int, tax: Tax, taxReward: Tax ) {
        
        self.name = name
        self.rate = rate
        self.tax = tax
        self.taxReward = tax
    }
    
    func getValue(isReward: Bool, dayCheckin: Date, dayCheckout: Date ) {
        
    }
}

