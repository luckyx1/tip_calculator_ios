//
//  SetttingsViewController.swift
//  tip_calculator
//
//  Created by Rob Hernandez on 12/11/16.
//  Copyright © 2016 Robert Hernandez. All rights reserved.
//

import UIKit

class SetttingsViewController: UIViewController {

    // All the labels in the Setting view
    @IBOutlet weak var morningLabel: UILabel!
    @IBOutlet weak var blueberryLabel: UILabel!
    @IBOutlet weak var siestaLabel: UILabel!

    //An instance variable to the Setting Controller to set the background color
    var option: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        // load from memory option selected
        self.loadBG()

    }


    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        // save option before switching
        self.saveBG()

    }

    // Attempt to read from UserDefault the bg_option, or
    // select the default one if not there
    func loadBG(){
        let defaults = UserDefaults.standard
        let background = defaults.string(forKey: "bg_option")
        if let bg = background{
            print("loading in setting, and its \(bg)")
            option = bg
            switch(bg){
                case "morning":
                    morningLabel.textColor = UIColor.orange
                case "blueberry":
                    blueberryLabel.textColor = UIColor.orange
                case "siesta":
                    siestaLabel.textColor = UIColor.orange
                default:
                    morningLabel.textColor = UIColor.orange
            }
        }else{
            print("couldnt load, loading default in setting")
            option = "morning"
            morningLabel.textColor = UIColor.orange
        }
    }


    // Save the current background color
    func saveBG(){
        let defaults = UserDefaults.standard
        print("saving background in setting \(option)")
        defaults.set(option, forKey: "bg_option")
        defaults.synchronize()

    }

    // clear options selected
    func clearAllSelected(){
        let labels = [morningLabel, blueberryLabel, siestaLabel]
        for label in labels{
            label?.textColor = UIColor.white
        }
        option = ""
    }

    // When buttons are click, change label to orange(User feedback)
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
