//
//  Caneta.swift
//  exercise_search_01
//
//  Created by Marcela Saidel on 18/09/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import Foundation

class Caneta {
    
    var marca: String
      
    init(marca: String) {
        self.marca = marca
      
    }
}
extension Caneta: SearchProtocols {
     
    func searchProperties(text: String) -> String {
       
        let textSearch = text.lowercased()
        if self.marca.lowercased().contains(textSearch) {
            return "Caneta: \(self.marca) "
        }
        
        return ""
    }

}
