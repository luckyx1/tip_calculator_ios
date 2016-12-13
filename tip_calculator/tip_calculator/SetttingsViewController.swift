//
//  SetttingsViewController.swift
//  tip_calculator
//
//  Created by Rob Hernandez on 12/11/16.
//  Copyright © 2016 Robert Hernandez. All rights reserved.
//

import UIKit

class SetttingsViewController: UIViewController {



    
    override func viewDidLoad() {
        super.viewDidLoad()
        // check if split among had been set before
//        self.setSplit()
        // check if switch was set before
//        self.setToggle()
    }
    

    
    @IBAction func splitBill(_ sender: Any) {
//        let defaults = UserDefaults.standard
//        if let people = Int(amountLabel.text!) {
//            if people > 0{
//                defaults.set(people, forKey: "split_amount")
//            }else{
//                defaults.set(1, forKey: "split_amount")
//            }
//        }else{
//            defaults.set(1, forKey: "split_amount")
//        }
//        defaults.synchronize()
    }

    @IBAction func toggled(_ sender: Any) {
//        let defaults = UserDefaults.standard
//        if switchLabel.isOn{
//            defaults.set(true, forKey: "show_split")
//        }else{
//            defaults.set(false, forKey: "show_split")
//        }
//        defaults.synchronize()
    }
    
    func setSplit(){
        let defaults = UserDefaults.standard
//
//        if defaults.object(forKey: "split_amount") == nil{
//            defaults.set(1, forKey: "split_amount")
//            amountLabel.text = "\(1)"
//            defaults.synchronize()
//        }else{
//            let amount = defaults.integer(forKey: "split_amount")
//            amountLabel.text = "\(amount)"
//        }

    }
    
    func setToggle(){
        let defaults = UserDefaults.standard
//
//        if defaults.object(forKey: "show_split") == nil{
//            defaults.set(false, forKey: "show_split")
//            switchLabel.setOn(false, animated: true)
//            defaults.synchronize()
//        }else{
//            let toggled = defaults.bool(forKey: "show_split")
//            switchLabel.setOn(toggled, animated: true)
//        }

    }

    



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
