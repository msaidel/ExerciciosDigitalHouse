//
//  Cachorro.swift
//  exercise_search_01
//
//  Created by Marcela Saidel on 18/09/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import Foundation

class Cachorro {
    
    var nome: String
    var raca: String
    
    init(nome: String, raca: String) {
        self.nome = nome
        self.raca = raca
    }
    
    
}
extension Cachorro: SearchProtocols {
     
    func searchProperties(text: String) -> String {
       
        let textSearch = text.lowercased()
        if self.nome.lowercased().contains(textSearch) || self.raca.lowercased().contains(textSearch)  {
            return "Cachorro: \(self.nome) - \(self.raca)"
        }
        
        return ""
    }

}
