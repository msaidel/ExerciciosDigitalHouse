//
//  CarDetailViewController.swift
//  collectionViewEx01
//
//  Created by Marcela Saidel on 02/10/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {
    
    @IBOutlet weak var imgDetail: UIImageView!
    
    var imgCarDetail: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imgDetail.image = UIImage(named: imgCarDetail)
    
    }
    

}
