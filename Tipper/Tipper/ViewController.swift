//
//  ViewController.swift
//  Tipper
//
//  Created by Mathew Chanda on 7/3/20.
//  Copyright © 2020 Mathew Chanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        view.endEditing(true)
    }
    
}

