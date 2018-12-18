//
//  AutoIDRequestViewController.swift
//  bluesky
//
//  Created by Joey Lovato on 12/17/18.
//  Copyright © 2018 Blue Sky. All rights reserved.
//

import UIKit

class AutoIDRequestViewController: UIViewController {
    
    @IBOutlet weak var yearTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onButtonSubmit(_ sender: Any) {
        let message = yearTextField.text!
    }
    
    

}
