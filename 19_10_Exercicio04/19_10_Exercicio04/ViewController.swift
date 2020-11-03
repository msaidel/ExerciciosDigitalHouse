//
//  ViewController.swift
//  19_10_Exercicio04
//
//  Created by Marcela Saidel on 19/10/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        
    }
    
    @IBAction func actionCadastro(_ sender: Any) {
       
        if let vc = UIStoryboard(name: "Detail", bundle: nil).instantiateInitialViewController() as? DetailViewController {
            
            vc.setComplete { (email, password) in
                self.textFieldName.text = email
                self.textFieldPassword.text = password
            }
            
            present(vc, animated: true, completion: nil)
        }
            
        
    }
    

}


