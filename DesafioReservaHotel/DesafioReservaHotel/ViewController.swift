//
//  ViewController.swift
//  DesafioReservaHotel
//
//  Created by Marcela Saidel on 09/10/20.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var datePickerCheckIn: UIDatePicker!
    @IBOutlet weak var datePickerCheckout: UIDatePicker!
    @IBOutlet weak var swicthReward: UISwitch!
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var viewResult: UIView!
    

    var reward = false
    
    var hotelParqueFlores: Hotel?
    var hotelBotanico: Hotel?
    var hotelAthantico: Hotel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fillHotel()
        datePickerCheckIn.datePickerMode = .dateAndTime
        datePickerCheckIn.preferredDatePickerStyle = .wheels
        datePickerCheckIn.setDate(Date(), animated: true)
        
        datePickerCheckout.datePickerMode = .dateAndTime
        datePickerCheckout.preferredDatePickerStyle = .wheels
        datePickerCheckout.setDate(Date(), animated: true)
        
    }

    func fillHotel() {
        
        var taxFlores:[Tax] 
        hotelParqueFlores = Hotel(name: "Parque das Flores", rate: 3, tax: <#T##[Tax]#>, taxReward: <#T##[Tax]#>)
        
        
        
        
    }
    
    @IBAction func actionSwitch(_ sender: Any) {
        reward = swicthReward.isOn
    }
    
    @IBAction func actionButtonBestHotel(_ sender: Any) {
        
        
        
    }
    

    
}

