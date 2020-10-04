//
//  CarCollectionViewCell.swift
//  collectionViewEx01
//
//  Created by Marcela Saidel on 01/10/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class CarCollectionViewCell: UICollectionViewCell {
  
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    
    override func awakeFromNib() {
       super.awakeFromNib()
    }
    
    func setup(car:Car) {
        
       
        imgView.layer.cornerRadius = 12
        imgView.image = UIImage(named: car.photo)
        
        lblName.textColor = .white
        lblYear.textColor = .lightGray
        
        lblName.text = car.name
        lblYear.text = car.year
        
    }
    
}
