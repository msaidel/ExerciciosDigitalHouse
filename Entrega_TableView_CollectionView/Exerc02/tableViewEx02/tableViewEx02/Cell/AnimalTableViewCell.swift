//
//  AnimalTableViewCell.swift
//  tableViewEx02
//
//  Created by Marcela Saidel on 04/10/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    @IBOutlet weak var lblNome: UILabel!
    @IBOutlet weak var lblRaca: UILabel!
    @IBOutlet weak var lblPeso: UILabel!
    @IBOutlet weak var lblEspecie: UILabel!
    
        
    override func awakeFromNib() {
        super.awakeFromNib()
      
        lblNome.textColor = .white
        lblRaca.textColor = .white
        lblPeso.textColor = .white
        lblEspecie.textColor = .white
        
    }

    func setupCell(animal: Animal) {
        
        lblNome.text = animal.nome
        lblRaca.text = "Raça: \(animal.raca)"
        lblPeso.text = "Peso: \(animal.peso) Kg"
        lblEspecie.text = "Espécie: \(animal.especie)"
    
        
    }
    
    
}
