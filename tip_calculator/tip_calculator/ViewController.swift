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
    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var fiveLabel: UILabel!
    @IBOutlet weak var tenLabel: UILabel!
    @IBOutlet weak var fifthteenLabel: UILabel!
    @IBOutlet weak var customLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!

    
    // General Gloabl vars //
    let tipArray = [0.05, 0.10, 0.15]

    
    // Functions ///
    
    // To set the title of the Navigation Bar
    override func viewDidLoad() {
        super.viewDidLoad()
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
    }
    
    func setDefaultValuesForTipControl(){
        let defaults = UserDefaults.standard
        let appDomain = Bundle.main.bundleIdentifier!

        defaults.removePersistentDomain(forName: appDomain)
        for num in 1...3{
            let str = "\(num)"
            if defaults.object(forKey: str) == nil{
                switch num{
                    case 1:
                        defaults.set(0.15, forKey: str)
                    case 2:
                        defaults.set(0.2, forKey: str)
                    case 3:
                        defaults.set(0.25, forKey: str)
                    default:
                        break
                }
            }
        }
        defaults.synchronize()
    }
 

    // Removes the Keyboard when editing text
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    // Calcuate the tip based on the input
    @IBAction func calculateTip(_ sender: Any) {
        // First compute the amount
        let bill = Double(billLabel.text!) ?? 0
//        setLabel(num: 5, bill: bill)
//        setLabel(num: 10, bill: bill)
//        setLabel(num: 15, bill: bill)
        
    }
    
//    func calculateTipFor(tipAmount: Int,bill: Double) -> Double{
//        return bill * Double((tipAmount/100))
//    }
//    
//    func setLabel(num: Int, bill: Double){
//        let tip = calculateTipFor(tipAmount: num, bill: bill)
//        switch num{
//        case 5:
//            fiveLabel.text = String(format: "$%.2f", tip)
//        case 10:
//            tenLabel.text = String(format: "$%.2f", tip)
//        case 15:
//            fifthteenLabel.text = String(format: "$%.2f", tip)
//        default:
//            customLabel.text = String(format: "$%.2f", tip)
//        }
//    }



}

