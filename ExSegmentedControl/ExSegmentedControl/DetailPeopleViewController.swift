//
//  DetailPeopleViewController.swift
//  ExSegmentedControl
//
//  Created by Marcela Saidel on 07/10/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class DetailPeopleViewController: UIViewController {
    
    var people: People?
    
    
    @IBOutlet weak var imageUser: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var navBar: UINavigationBar!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let people = people {
            
            if people.type == .developer {
               navBar.isHidden = false
            } else {
               navBar.isHidden = true
            }
           
            labelName.text = people.nome
            imageUser.image = UIImage(named: people.image)
            
        } else {
            
            navBar.isHidden = false
            labelName.text = ""
            imageUser.image = nil
            
        }
        
    }
    
    static func getViewController() -> DetailPeopleViewController? {
        
        if let viewController = UIStoryboard(name: "DetailPeople", bundle: nil).instantiateInitialViewController() as? DetailPeopleViewController {
            return viewController
        }
        
        return nil
            
    }
    
    @IBAction func actionClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
