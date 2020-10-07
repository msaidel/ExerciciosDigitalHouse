//
//  ViewController.swift
//  ExSegmentedControl
//
//  Created by Marcela Saidel on 07/10/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

enum TypePeople {
    static let people = 0
    static let developer = 1
}

class ViewController: UIViewController {
    
    @IBOutlet weak var segmentedControlPeoples: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    var listPeople = [People]()
    var listDeveloper = [People]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        fillArray()
        
    }
    
    func fillArray() {
        
        listPeople.append(People(nome:"Marcela", type: .people, image: "image1"))
        listPeople.append(People(nome:"Maria Clara", type: .people, image: "image1"))
        listPeople.append(People(nome:"José", type: .people, image: "image2"))
        listPeople.append(People(nome:"Glair", type: .people, image: "image1"))
        
        listDeveloper.append(People(nome:"Hugo", type: .developer, image: "image2"))
        listDeveloper.append(People(nome:"Lucas", type: .developer, image: "image2"))
        listDeveloper.append(People(nome:"Leticia", type: .developer, image: "image1"))
        listDeveloper.append(People(nome:"Fabio", type: .developer, image: "image2"))
        
        tableView.reloadData()
    }
    
    @IBAction func changeSegmentedControl(_ sender: UISegmentedControl) {
        
        tableView.reloadData()
        
    }
    
    func getOptionSelected() -> Int {
        
        if segmentedControlPeoples.selectedSegmentIndex == TypePeople.developer {
            return 1
        } else {
            return 0
        }
        
    }
    
}
extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch getOptionSelected() {
        case TypePeople.developer:
            
            if let vc = DetailPeopleViewController.getViewController() {
                vc.people =  listDeveloper[indexPath.row]
                present(vc, animated: true, completion: nil)
            }

            
        default:
            
            if let viewController = UIStoryboard(name: "DetailPeople", bundle: nil).instantiateInitialViewController() as? DetailPeopleViewController {
                
                viewController.people = listPeople[indexPath.row]
                self.navigationController?.pushViewController(viewController, animated: true)
            }
            
        }
        
    }
    
}

extension ViewController: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if getOptionSelected() == TypePeople.developer {
            return listDeveloper.count
        } else {
            return listPeople.count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "peopleCell", for: indexPath) as! ListPeopleTableViewCell
        
        if segmentedControlPeoples.selectedSegmentIndex == TypePeople.developer {
            cell.setup(people:  listDeveloper[indexPath.row])
        } else {
            cell.setup(people:  listPeople[indexPath.row])
        }
        
        return cell
        
    }
    
    
    
    
}
