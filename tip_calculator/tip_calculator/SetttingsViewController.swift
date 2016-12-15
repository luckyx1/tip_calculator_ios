//
//  SetttingsViewController.swift
//  tip_calculator
//
//  Created by Rob Hernandez on 12/11/16.
//  Copyright © 2016 Robert Hernandez. All rights reserved.
//

import UIKit

class SetttingsViewController: UIViewController {

    @IBOutlet weak var morningLabel: UILabel!
    @IBOutlet weak var blueberryLabel: UILabel!
    @IBOutlet weak var siestaLabel: UILabel!
    var option: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // load from memory option selected

    }

    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // save option before switching
    }
    

    // clear options selected
    func clearAllSelected(){
        let labels = [morningLabel, blueberryLabel, siestaLabel]
        for label in labels{
            label?.textColor = UIColor.white
        }
        option = ""
    }
    

    @IBAction func morningMistClicked(_ sender: Any) {
        self.clearAllSelected()
        morningLabel.textColor = UIColor.orange
        option = "morning"
    }
  

    @IBAction func blueberryClicked(_ sender: Any) {
        self.clearAllSelected()
        blueberryLabel.textColor = UIColor.orange
        option = "blueberry"
    }
    
    @IBAction func siestaClicked(_ sender: Any) {
        self.clearAllSelected()
        siestaLabel.textColor = UIColor.orange
        option = "siesta"
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
