//
//  ProductItemEmptyCell.swift
//  Desafio_30_10_2020
//
//  Created by Marcela Saidel on 02/11/20.
//

import UIKit

class ProductItemEmptyCell: UITableViewCell {

    
    @IBOutlet weak var labelTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        labelTitle.text = "Nenhum item encontrado"
    }

 

}
