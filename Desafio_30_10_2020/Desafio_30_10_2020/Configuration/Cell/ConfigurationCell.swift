//
//  ConfigurationCell.swift
//  Desafio_30_10_2020
//
//  Created by Marcela Saidel on 02/11/20.
//

import UIKit

class ConfigurationCell: UITableViewCell {

    @IBOutlet weak var labelITitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(item: String) {
        labelITitle.text = item
    }
  
}
