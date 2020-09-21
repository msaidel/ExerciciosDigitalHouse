//
//  MyViewTwoViewController.swift
//  transictionScreen
//
//  Created by Marcela Saidel on 21/09/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class MyViewThreePushedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "My view three pushed"
    }
    
    @IBAction func actionClose(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }

}
