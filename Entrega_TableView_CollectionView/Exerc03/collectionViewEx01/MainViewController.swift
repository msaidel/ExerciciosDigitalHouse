//
//  MainViewController.swift
//  collectionViewEx01
//
//  Created by Marcela Saidel on 01/10/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var listCar = [Car]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Listagem de Carros"
        collectionView.delegate = self
        collectionView.dataSource = self
        
        
        fillCar()
    }

    private func fillCar() {
        
        self.listCar.append(Car(name: "Carro 1", photo: "car1",  year: "2015"))
        self.listCar.append(Car(name: "Carro 2", photo: "car2",  year: "2015"))
        self.listCar.append(Car(name: "Carro 3", photo: "car3",  year: "2015"))
        self.listCar.append(Car(name: "Carro 4", photo: "car4",  year: "2015"))
        self.listCar.append(Car(name: "Carro 5", photo: "car5",  year: "2015"))
        self.listCar.append(Car(name: "Carro 6", photo: "car6",  year: "2015"))
        self.listCar.append(Car(name: "Carro 7", photo: "car7",  year: "2015"))
        self.listCar.append(Car(name: "Carro 8", photo: "car8",  year: "2015"))
        self.listCar.append(Car(name: "Carro 9", photo: "car9",  year: "2015"))
        self.listCar.append(Car(name: "Carro 10", photo: "car10", year: "2015"))
        
        collectionView.reloadData()
        
    }

}

extension MainViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let destination = UIStoryboard(name: "CarDetail", bundle: nil).instantiateInitialViewController() as! CarDetailViewController
        destination.imgCarDetail = self.listCar[indexPath.row].photo
        navigationController?.pushViewController(destination, animated: true)
        
    }
    
    
    
}
extension MainViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listCar.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellCar", for: indexPath) as! CarCollectionViewCell
        
        cell.setup(car: listCar[indexPath.row])
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
             return CGSize(width: collectionView.frame.size.width, height: 72)
   
    }
    
    
}
