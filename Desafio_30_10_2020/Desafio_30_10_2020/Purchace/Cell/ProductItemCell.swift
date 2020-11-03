//
//  ProductItemCell.swift
//  Desafio_30_10_2020
//
//  Created by Marcela Saidel on 02/11/20.
//

import UIKit

class ProductItemCell: UITableViewCell {

    @IBOutlet weak var labelProductName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(product: Product) {
        labelProductName.text = product.name
    }

}
