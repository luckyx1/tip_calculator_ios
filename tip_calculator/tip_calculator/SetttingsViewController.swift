//
//  SetttingsViewController.swift
//  tip_calculator
//
//  Created by Rob Hernandez on 12/11/16.
//  Copyright © 2016 Robert Hernandez. All rights reserved.
//

import UIKit

class SetttingsViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var Selection: UIPickerView!
    var arr: [Double] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setArray()
        Selection.delegate = self
        Selection.dataSource = self
    }
    
    func setArray(){
        let defaults = UserDefaults.standard
        arr = []
        for num in 1...3{
            let str = "\(num)"
            arr += [defaults.double(forKey: str)]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let str = "\(arr[row])"
        return str
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
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
