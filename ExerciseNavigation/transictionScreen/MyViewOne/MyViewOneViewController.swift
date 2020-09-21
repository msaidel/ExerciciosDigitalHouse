//
//  MyViewOneViewController.swift
//  transictionScreen
//
//  Created by Marcela Saidel on 21/09/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class MyViewOneViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       title = "MyViewOne"

    }
    

    
    @IBAction func actionOpen(_ sender: UIButton) {
                
        if sender.tag == 1 {
            
            if let oneModal = UIStoryboard(name: "MyViewOneModal", bundle: nil).instantiateInitialViewController() as? MyViewOneModalViewController {
               
                present(oneModal, animated: true)
            }
            
        } else {
            
            if let onePushed = UIStoryboard(name: "MyViewOnePushed", bundle: nil).instantiateInitialViewController() as? MyViewOnePushedViewController {
                
                navigationController?.pushViewController(onePushed, animated: true)
            }
            
        }
        
    }
    
}
