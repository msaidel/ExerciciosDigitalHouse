//
//  ViewController.swift
//  exercise_search_01
//
//  Created by Marcela Saidel on 18/09/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var labelResult: UILabel!
    
  
    
    var arrayObjects = [SearchProtocols]()
      
    var arrayResult: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        setup()
        searchBar.delegate = self
        
        
    }

    private func setup() {
        
        let cachorro = Cachorro(nome: "Bidu", raca: "Pinsher")
        let pessoaFisica = PessoaFisica(nome: "Augusto", cpf: "000000")
        let pessoaJuridica = PessoaJuridica(nome: "AJ Solucoes", cnpj: "11111")
        let canetinha = Caneta(marca: "BIC")
        let aviao = Aviao(modelo: "Boing", cidade: "São Paulo")
        
        arrayObjects.append(cachorro)
        arrayObjects.append(pessoaFisica)
        arrayObjects.append(pessoaJuridica)
        arrayObjects.append(canetinha)
        arrayObjects.append(aviao)
        
    }

}
extension ViewController: UISearchBarDelegate {
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        if let text =  searchBar.text {
            getResults(text: text)
        }
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if searchBar.text == "" {
            labelResult.text = ""
            arrayResult = []
        }
        
    }
    
    func getResults(text: String) {
        
        arrayResult = []
          
        for item in arrayObjects {
            let result =  item.searchProperties(text: text)
            
            if !result.isEmpty {
                arrayResult.append(result)
            }
           
        }
        
        refreshList(array: arrayResult)
        
    }
    
    func refreshList(array: [String]) {
        
        labelResult.text = ""
        var text = labelResult.text!
        
        for item in array {
            text = "\(text) \(item)\n"
        }
        
        labelResult.text = text
    }
    
}

