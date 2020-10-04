//
//  AnimalDetailViewController.swift
//  tableViewEx02
//
//  Created by Marcela Saidel on 04/10/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class PeopleDetailViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblOffice: UILabel!
    
    var people: People?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configScreen()
    }
    
    private func configScreen() {
        
        lblName.text = people?.name
        lblEmail.text = people?.email
        lblOffice.text = people?.office
        
    }

  
    @IBAction func tapClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
