//
//  ConfigurationViewController.swift.swift
//  Desafio_30_10_2020
//
//  Created by Marcela Saidel on 02/11/20.
//

import UIKit

class ConfigurationViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var itens = ["Avaliar o app", "Suporte", "Relatar um problema por email"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Configurações"
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func avaliate() {
        UIApplication.shared.open(URL(string: "itms-apps://itunes.apple.com/app/id")!)
    }
    
    func support() {
        UIApplication.shared.open(URL(string: "sms://19997581887")!)
    }
    
    func sendEmail() {
        
        UIApplication.shared.open(URL(string: "mailto://email@gmail.com")!)
    }

 

}

extension ConfigurationViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            self.avaliate()
        case 1:
            self.support()
        case 2:
            self.sendEmail()
        default:
            break
        }
    }
    
}

extension ConfigurationViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itens.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConfigurationCell", for: indexPath) as! ConfigurationCell
        cell.setup(item: itens[indexPath.row])
        return cell
    }
    
    
}

