//
//  PessoaJuridica.swift
//  exercise_search_01
//
//  Created by Marcela Saidel on 18/09/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import Foundation

class PessoaJuridica: Pessoa {
    
    var cnpj: String
    
    init(nome: String, cnpj: String) {
        self.cnpj = cnpj
        super.init(nome: nome)
    }
}
extension PessoaJuridica: SearchProtocols {
     
    func searchProperties(text: String) -> String {
       
        let textSearch = text.lowercased()
        if self.cnpj.lowercased().contains(textSearch) || self.nome.lowercased().contains(textSearch) {
            return "PessoaJuridica: \(self.nome) - \(self.cnpj) "
        }
        
        return ""
    }

}
