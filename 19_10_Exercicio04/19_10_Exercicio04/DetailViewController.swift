//
//  DetailViewController.swift
//  19_10_Exercicio04
//
//  Created by Marcela Saidel on 19/10/20.
//

import UIKit

typealias MyOnCompletion = (_ email: String, _ password: String) -> Void

class DetailViewController: UIViewController {

    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
   
    var onCompletion: ((_ email: String, _ password: String) -> Void)?
    var myCompletion: MyOnCompletion?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
  
    
    func setComplete(onCompletion: @escaping(_ email: String, _ password: String) -> Void ) {

       self.onCompletion = onCompletion

    }

    func setMyCompletion(myCompletion: @escaping(MyOnCompletion) ) {
        
        self.myCompletion = myCompletion
    }
    
    @IBAction func tapClose(_ sender: Any) {
 
        onCompletion?(textFieldEmail.text!, textFieldPassword.text!)
        
        myCompletion?(textFieldEmail.text!, textFieldPassword.text!)
        
        dismiss(animated: true, completion: nil)
 
        
    }
    

    

}


