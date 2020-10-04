//
//  PeopleTableViewCell.swift
//  tableViewEx01
//
//  Created by Marcela Saidel on 04/10/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class PeopleTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblOffice: UILabel!
    
        
    override func awakeFromNib() {
        super.awakeFromNib()
        
        lblName.textColor = .black
        lblEmail.textColor = .lightText
        lblOffice.textColor = .lightText
        
    }

    func setupCell(people: People) {
        
        lblName.text = people.name
        lblEmail.text = people.email
        lblOffice.text = people.office
        
    }
    
    
}
