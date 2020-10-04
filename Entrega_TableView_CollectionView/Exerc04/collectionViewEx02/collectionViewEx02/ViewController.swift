//
//  ViewController.swift
//  collectionViewEx02
//
//  Created by Marcela Saidel on 02/10/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var listNames = [ "Marcela", "Maria Clara", "Daniela", "Glair", "Lucas", "José", "Clara", "Tim", "Amora", "Nino", "Zilda", "Fabio", "Felipe", "Júnior", "Caio", "Gladys", "Rui", "Ivan", "Fernando", "Lorival"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Nomes"
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }


}

extension ViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        listNames.remove(at: indexPath.row)
        collectionView.reloadData()
               
    }
    
    
    
}
extension ViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listNames.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellName", for: indexPath) as! NameCollectionViewCell
        
         cell.setup(name: listNames[indexPath.row])
        
        return cell
    }

 
    
    
}
