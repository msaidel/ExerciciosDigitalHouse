//
//  MyViewThreeViewController.swift
//  transictionScreen
//
//  Created by Marcela Saidel on 21/09/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class MyViewThreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "View Three"
    }
    

    @IBAction func actionOpen(_ sender: UIButton) {
                
        if sender.tag == 1 {
            
            if let threeModal = UIStoryboard(name: "MyViewThreeModal", bundle: nil).instantiateInitialViewController() as? MyViewThreeModalViewController {
               
                present(threeModal, animated: true)
            }
            
        } else {
            
            if let threePushed = UIStoryboard(name: "MyViewThreePushed", bundle: nil).instantiateInitialViewController() as? MyViewThreePushedViewController {
                
                navigationController?.pushViewController(threePushed, animated: true)
            }
            
        }
        
    }

}
