//
//  ViewController.swift
//  exTableViewDesafio01
//
//  Created by Marcela Saidel on 25/09/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var listCar = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        tableView.delegate = self
        tableView.dataSource = self
        
        listCar.append(Car(name: "Fiat"))
        listCar.append(Car(name: "Ford"))
        listCar.append(Car(name: "Toyota"))
        listCar.append(Car(name: "GM"))
        listCar.append(Car(name: "Renault"))
        
    }

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let viewCarDetail = CarDetailViewController.getViewController() {
            viewCarDetail.car = listCar[indexPath.row]
            present(viewCarDetail, animated: true)
        }
        //print(listCar[indexPath.row].name)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listCar.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = listCar[indexPath.row].name
        cell.imageView?.image = UIImage(named: "car01.jpeg")
        
        return cell
    }
    
    
}

