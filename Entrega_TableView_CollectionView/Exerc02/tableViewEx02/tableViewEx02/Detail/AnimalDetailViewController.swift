//
//  AnimalDetailViewController.swift
//  tableViewEx02
//
//  Created by Marcela Saidel on 04/10/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class AnimalDetailViewController: UIViewController {

    @IBOutlet weak var lblNome: UILabel!
    @IBOutlet weak var lblRaca: UILabel!
    @IBOutlet weak var lblEspecie: UILabel!

    
    var animal: Animal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configScreen()
    }
    
    private func configScreen() {
        
        if let animal = self.animal {
            lblNome.text = "Nome: \(animal.nome)"
            lblRaca.text = "Raça: \(animal.raca)"
            lblEspecie.text = "Espécie: \(animal.especie)"
            
        }
   
        
    }

  
    @IBAction func tapClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
