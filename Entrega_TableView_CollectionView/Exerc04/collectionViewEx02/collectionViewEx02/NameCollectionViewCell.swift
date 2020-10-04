//
//  NameCollectionViewCell.swift
//  collectionViewEx02
//
//  Created by Marcela Saidel on 03/10/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class NameCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var lblName: UILabel!
        
    func setup(name: String) {
       lblName.text = name
    }
}
