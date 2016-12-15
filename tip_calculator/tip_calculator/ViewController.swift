//
//  ViewController.swift
//  tip_calculator
//
//  Created by Rob Hernandez on 12/10/16.
//  Copyright © 2016 Robert Hernandez. All rights reserved.
//

import UIKit


// A way to convert hex codes to colors
// http://stackoverflow.com/questions/24263007/how-to-use-hex-colour-values-in-swift-ios
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}



class ViewController: UIViewController {
    
    //references to outlets(Labels) //
    @IBOutlet weak var peopleLabel: UITextField!
    @IBOutlet weak var subtotalLabel: UITextField!
    @IBOutlet weak var tipLabel: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var payPerLabel: UILabel!
    
    // Set background color of the views
    @IBOutlet weak var topLabel: UIView!
    @IBOutlet weak var midLabel: UIView!
    @IBOutlet weak var bottomLabel: UIView!
    
    
    var grandTotal: Double = 0.00
    let DEFAULT_PERSON = 1

    
    // Functions ///
    
    
    // Takes the subtotal & tip and determins the total afterwards
    func calculateTotal(){
        let bill = Double(subtotalLabel.text!) ?? 0
        let gratuity = Double(tipLabel.text!) ?? 0
        let tip = gratuity / 100
        grandTotal = bill + (bill * tip)
        totalLabel.text = String(format: "$%.2f", grandTotal)
    }
    
    // Takes the total preset before, and splits among the people inputted
    func calculatePerPerson(){
        let people  = Int(peopleLabel.text!) ?? DEFAULT_PERSON
        let per = (grandTotal / Double(people))
        payPerLabel.text = String(format: "$%.2f", per)
    }
    
    // A helper method that calculates the total and then the split
    func doCalculations(){
        calculateTotal()
        calculatePerPerson()
    }


    
    // To set the title of the Navigation Bar
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        
        // Set the default Background
        self.setSiesta()
        
        // load the values from memory
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // set the background here
        
        // place the values saved here
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // save the values here
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
 

    // Removes the Keyboard when editing text
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    // Do calculations on determining how many people to split the bill
    // It first validates that the user cannot set less that one person 
    // paying, then does calculations
    @IBAction func peopleSet(_ sender: Any) {
        let people  = Int(peopleLabel.text!) ?? DEFAULT_PERSON
        if people < DEFAULT_PERSON {
            peopleLabel.text = "\(DEFAULT_PERSON)"
        }
        doCalculations()
    }
    
    // Do calculations on setting the Subtotal
    @IBAction func subtotalSet(_ sender: Any) {
        doCalculations()

    }
    
    // Do calculations on setting the Tip
    @IBAction func tipSet(_ sender: Any) {
        doCalculations()
    }
    
    
    func setDefaultTip(){
        //let defaults = UserDefaults.standard
        //let appDomain = Bundle.main.bundleIdentifier!
        //defaults.removePersistentDomain(forName: appDomain)
        
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
    
    // Code to set the background
    func setMorningMist(){
        topLabel.backgroundColor = UIColor.init(netHex: 0x90BEC6)
        midLabel.backgroundColor = UIColor.init(netHex: 0x4E4790)
        bottomLabel.backgroundColor = UIColor.init(netHex: 0x2A2A2E)
    }

    func setBlueBerry(){
        topLabel.backgroundColor = UIColor.init(netHex: 0x7F8BEB)
        midLabel.backgroundColor = UIColor.init(netHex: 0x5261CF)
        bottomLabel.backgroundColor = UIColor.init(netHex: 0x3A4596)
    }
    
    func setSiesta(){
        topLabel.backgroundColor = UIColor.init(netHex: 0xFDABA3)
        midLabel.backgroundColor = UIColor.init(netHex: 0x70514C)
        bottomLabel.backgroundColor = UIColor.init(netHex: 0xDE585D)
    }
    





    

}

