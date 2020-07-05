//
//  ViewController.swift
//  Tipper
//
//  Created by Mathew Chanda on 7/3/20.
//  Copyright © 2020 Mathew Chanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //IBOutlet for the Home Screen
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    let defaults = UserDefaults.standard
    
    /*
    * When View appears, we will set the default index for the segmented control
    */
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
           tipControl.selectedSegmentIndex = defaults.integer(forKey: "Index")
    }
    
    /*
    * Set the title of the screen
    */ 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Sets the title in the Navigation Bar
        self.title = "Tipper"
    }

    /*
     *  Dismiss the keyboard by tapping the view 
     */
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
    }
    
    /*
     * Calculate tip based on the value in the textfield and segmented control
     */
    @IBAction func calculateTip(_ sender: Any) {
        // Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // Calculate the total and tip
        let tipPercentages = [0.15, 0.18 ,0.20]
        let tip = bill * tipPercentages[defaults.integer(forKey: "Index")]
        let total = bill + tip
        
        // Update the tip and total
        tipLabel.text = String(format : "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f" , total)
    }
    
}

