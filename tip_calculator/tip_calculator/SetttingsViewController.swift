//
//  SetttingsViewController.swift
//  tip_calculator
//
//  Created by Rob Hernandez on 12/11/16.
//  Copyright © 2016 Robert Hernandez. All rights reserved.
//

import UIKit

class SetttingsViewController: UIViewController {

    var arr: [Double] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setArray()

    }
    
    func setArray(){
        let defaults = UserDefaults.standard
        arr = []
        for num in 1...3{
            let str = "\(num)"
            arr += [defaults.double(forKey: str)]
        }
    }
    
    // Removes the Keyboard when editing text
//    @IBAction func onTap(_ sender: Any) {
//        view.endEditing(true)
//    }
//    

    



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
