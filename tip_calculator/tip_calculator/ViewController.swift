//
//  ViewController.swift
//  tip_calculator
//
//  Created by Rob Hernandez on 12/10/16.
//  Copyright © 2016 Robert Hernandez. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    //references to outlets //
    @IBOutlet weak var peopleLabel: UITextField!
    @IBOutlet weak var subtotalLabel: UITextField!
    @IBOutlet weak var tipLabel: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var payPerLabel: UILabel!

    
    // Functions ///
    


    
    // To set the title of the Navigation Bar
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        
        // set the focus to the bill, with keyboard enabled
        
        // set the tip to 15 if not set
//        self.setDefaultTip()
        
        // hide each person, unless enbaled
//        self.showSplit()
    }
    
    func setDefaultTip(){
        let defaults = UserDefaults.standard
        let appDomain = Bundle.main.bundleIdentifier!
        defaults.removePersistentDomain(forName: appDomain)
        
//        if defaults.object(forKey: "default_tip") == nil{
//            defaults.set(0.15, forKey: "default_tip")
//            tipLabel.text = "\(Int(0.15 * 100))"
//            defaults.synchronize()
//
//        }else{
//            let tip = defaults.double(forKey: "default_tip")
//            tipLabel.text = "\(Int(tip * 100))"
//        }
        
    }
 

    // Removes the Keyboard when editing text
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    @IBAction func setTipPercent(_ sender: Any) {
        let defaults = UserDefaults.standard
//        if let tip = Double(tipLabel.text!) {
//            let tipAmount: Double =  tip/100
//            defaults.set(tipAmount, forKey: "default_tip")
//        }else{
//            defaults.set(0.0, forKey: "default_tip")
//        }
//        defaults.synchronize()
//        self.calculateTotal(sender: sender)
    }


    @IBAction func calculateTotal(_ sender: Any) {
        let defaults = UserDefaults.standard
//        let tip = defaults.double(forKey: "default_tip")
//        let bill = Double(billLabel.text!) ?? 0
//        let total:Double = bill + (bill * tip)
//        totalLabel.text = String(format: "$%.2f", total)
    }
    
    func showSplit(){
        let defaults = UserDefaults.standard

//        if defaults.object(forKey: "show_split") == nil{
//            shareLabel.isHidden = true
//            shareMg.isHidden = true
//            
//        }else{
//            let toggled = defaults.bool(forKey: "show_split")
//            shareLabel.isHidden = !toggled
//            shareMg.isHidden = !toggled
//        }
    }


    

}

