//
//  ViewController.swift
//  tableViewEx01
//
//  Created by Marcela Saidel on 04/10/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var listPeople = [People]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Lista de Colaboradores"
        fillPeople()
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    func fillPeople() {
       
        listPeople.append(People(name:"Marcela", email: "marcela@gmail.com", office: "Developer"))
        listPeople.append(People(name:"Augusto", email: "augusto@gmail.com", office: "QA"))
        listPeople.append(People(name:"Daniela", email: "daniela@gmail.com", office: "Developer"))
        listPeople.append(People(name:"Luciana", email: "lu@gmail.com", office: "QA"))
        listPeople.append(People(name:"Ricardo", email: "ricardo@gmail.com", office: "Developer"))
        listPeople.append(People(name:"Lucas", email: "lucas@gmail.com", office: "Developer"))
        listPeople.append(People(name:"Eduardo", email: "eduardo@gmail.com", office: "Developer"))
        listPeople.append(People(name:"Rogério", email: "rogerio@gmail.com", office: "Developer"))
        listPeople.append(People(name:"Caio", email: "caio@gmail.com", office: "Designer"))
        listPeople.append(People(name:"Murilo", email: "murilo@gmail.com", office: "QA"))
        listPeople.append(People(name:"Clara", email: "clara@gmail.com", office: "Developer"))
        listPeople.append(People(name:"Leticia", email: "le@gmail.com", office: "Developer"))
        listPeople.append(People(name:"Aline", email: "aline@gmail.com", office: "Developer"))
        listPeople.append(People(name:"Marcelo", email: "marcelo@gmail.com", office: "QA"))
        listPeople.append(People(name:"Alexandre", email: "alexandre@gmail.com", office: "Designer"))
        
    }

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailPeople = UIStoryboard(name: "PeopleDetail", bundle: nil).instantiateInitialViewController() as! PeopleDetailViewController
        detailPeople.people = listPeople[indexPath.row]
        
        present(detailPeople, animated: true, completion: nil)
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listPeople.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellName", for: indexPath) as! PeopleTableViewCell
        cell.setupCell(people: listPeople[indexPath.row])
        
        return cell
    }
}
