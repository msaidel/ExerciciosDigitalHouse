//
//  ViewController.swift
//  transictionScreen
//
//  Created by Marcela Saidel on 21/09/20.
//  Copyright © 2020 Marcela Saidel. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Main"
    }

    @IBAction func actionOpenPush(_ sender: UIButton) {
        openScreenPush(tag: sender.tag)
    }
    
    @IBAction func actionOpenModal(_ sender: UIButton) {
       openModal(tag: sender.tag)
    }
    
    
    func openScreenPush(tag: Int) {
        
        switch tag {
        case 1:
            
            if let myViewOne = UIStoryboard(name: "MyViewOne", bundle: nil).instantiateInitialViewController() as? MyViewOneViewController {
               navigationController?.pushViewController(myViewOne, animated: true)
            }
            
        case 3:
            
            if let onePushed = UIStoryboard(name: "MyViewOnePushed", bundle: nil).instantiateInitialViewController() as? MyViewOnePushedViewController {
                
                navigationController?.pushViewController(onePushed, animated: true)
            }
            
            
        case 4:
            
            if let myViewTwo = UIStoryboard(name: "MyViewTwo", bundle: nil).instantiateInitialViewController() as? MyViewTwoViewController {
                
                navigationController?.pushViewController(myViewTwo, animated: true)
            }
            
            
        case 6:
            
            if let twoPushed = UIStoryboard(name: "MyViewTwoPushed", bundle: nil).instantiateInitialViewController() as? MyViewTwoPushedViewController {
                
                navigationController?.pushViewController(twoPushed, animated: true)
            }
            
            
        case 7:
            
            if let myViewThree = UIStoryboard(name: "MyViewThree", bundle: nil).instantiateInitialViewController() as? MyViewThreeViewController {
                
                navigationController?.pushViewController(myViewThree, animated: true)
            }
            
            
        case 9:
            
            if let threePushed = UIStoryboard(name: "MyViewThreePushed", bundle: nil).instantiateInitialViewController() as? MyViewThreePushedViewController {
                
                navigationController?.pushViewController(threePushed, animated: true)
            }
            
        default:
            break
        }
        
    }
    
    func openModal(tag: Int) {
        
        switch tag {
        case 2:
            
            if let oneModal = UIStoryboard(name: "MyViewOneModal", bundle: nil).instantiateInitialViewController() as? MyViewOneModalViewController {
                present(oneModal, animated: true)
            }
            
        case 5:
        
            if let twoModal = UIStoryboard(name: "MyViewTwoModal", bundle: nil).instantiateInitialViewController() as? MyViewTwoModalViewController {
                present(twoModal, animated: true)
            }
            
        case 8:
            
            if let threeModal = UIStoryboard(name: "MyViewThreeModal", bundle: nil).instantiateInitialViewController() as? MyViewThreeModalViewController {
                present(threeModal, animated: true)
            }
            
        default:
            break
        }
        
    }
}

