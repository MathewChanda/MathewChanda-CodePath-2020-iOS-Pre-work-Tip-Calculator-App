//
//  SettingsViewController.swift
//  Tipper
//
//  Created by Mathew Chanda on 7/5/20.
//  Copyright © 2020 Mathew Chanda. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tipControl: UISegmentedControl!
    let defaults = UserDefaults.standard
    
    
    /*
    *  Occurs before the load, we will pass the index of the selected segment index of the past
    *  to the the segmented control on the setting view
    */
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tipControl.selectedSegmentIndex = defaults.integer(forKey: "Index")
    }
    
    
    /*
     *  When View loaded, we will set the title of the navigation bar to settings
     */
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
         self.title = "Settings"
    }
    
    /*
    *  Saves the users preference for the default percentage
    */
    @IBAction func saveDefaultPercentage(_ sender: Any) {
        defaults.set(tipControl.selectedSegmentIndex,forKey: "Index")
        print(defaults.integer(forKey: "Index"))
        defaults.synchronize()
    }
    
    
}
