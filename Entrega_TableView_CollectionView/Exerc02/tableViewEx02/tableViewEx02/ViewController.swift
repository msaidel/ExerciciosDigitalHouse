//
//  ViewController.swift
//  tableViewEx02
//
//  Created by Marcela Saidel on 04/10/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var listaAnimais = [Animal]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Lista de Animais"
        fillTable()
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func fillTable() {
       
        listaAnimais.append(Animal(nome: "Nino",  raca: "SRD", peso: "12", especie: "Canina"))
        listaAnimais.append(Animal(nome: "Amora",  raca: "SRD", peso: "10", especie: "Canina"))
        listaAnimais.append(Animal(nome: "Cristal",  raca: "Pinscher", peso: "3", especie: "Canina"))
        listaAnimais.append(Animal(nome: "Tim",  raca: "Labrador", peso: "7", especie: "Canina"))
        listaAnimais.append(Animal(nome: "Pandora",  raca: "SRD", peso: "11", especie: "Canina"))
        listaAnimais.append(Animal(nome: "Xandy",  raca: "SRD", peso: "3", especie: "Felina"))
        listaAnimais.append(Animal(nome: "Nene",  raca: "SRD", peso: "5", especie: "Felina"))
        listaAnimais.append(Animal(nome: "Anao",  raca: "SRD", peso: "5", especie: "Felina"))
        listaAnimais.append(Animal(nome: "Digo",  raca: "SRD", peso: "3", especie: "Felina"))
        listaAnimais.append(Animal(nome: "Xuxu",  raca: "SRD", peso: "3", especie: "Felina"))
        
        
    }

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detail = UIStoryboard(name: "AnimalDetail", bundle: nil).instantiateInitialViewController() as! AnimalDetailViewController
        detail.animal = listaAnimais[indexPath.row]
        
        present(detail, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaAnimais.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellAnimal", for: indexPath) as! AnimalTableViewCell
        cell.setupCell(animal: listaAnimais[indexPath.row])
        
        return cell
    }
}
