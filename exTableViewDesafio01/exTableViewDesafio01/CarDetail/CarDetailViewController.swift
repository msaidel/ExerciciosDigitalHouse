//
//  carDetailViewController.swift
//  exTableViewDesafio01
//
//  Created by Marcela Saidel on 25/09/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {

    var car: Car?
    @IBOutlet weak var labelModel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let car = car {
            labelModel.text = car.name
        }
        
    }
    
    static func getViewController() -> CarDetailViewController? {
        
        if let viewController = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as? CarDetailViewController {
           return viewController
        }
        
        return nil
      
    }
    
    @IBAction func tapClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
