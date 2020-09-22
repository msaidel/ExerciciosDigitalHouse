//
//  MyViewTwoViewController.swift
//  transictionScreen
//
//  Created by Marcela Saidel on 21/09/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class MyViewTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "View two"
    }
    

    @IBAction func actionOpen(_ sender: UIButton) {
                
        if sender.tag == 1 {
            
            if let twoModal = UIStoryboard(name: "MyViewTwoModal", bundle: nil).instantiateInitialViewController() as? MyViewTwoModalViewController {
               
                present(twoModal, animated: true)
            }
            
        } else {
            
            if let twoPushed = UIStoryboard(name: "MyViewTwoPushed", bundle: nil).instantiateInitialViewController() as? MyViewTwoPushedViewController {
                
                navigationController?.pushViewController(twoPushed, animated: true)
            }
            
        }
        
    }
    
}
