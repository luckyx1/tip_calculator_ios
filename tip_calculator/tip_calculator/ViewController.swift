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
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    // General Gloabl vars //
    let tipArray = [0.15, 0.20, 0.25]

    
    // Functions ///
    
    // To set the title of the Navigation Bar
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        self.setDefaultValuesForTipControl()
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
        let tip = bill * getTipAmount()
        let total = bill + tip
        
        // Set the text of the labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

    // I could not link two functions to the same,
    // So I manually called the previous fun on change
    @IBAction func updateTipOnChange(_ sender: Any) {
        calculateTip(sender: sender)
    }
    
    // queries which option was select, and determines the percentage
    // as a result
    func getTipAmount() -> Double{
        let defaults = UserDefaults.standard
        let str = "\(tipControl.selectedSegmentIndex + 1)"
        return defaults.double(forKey: str)
    }
}

