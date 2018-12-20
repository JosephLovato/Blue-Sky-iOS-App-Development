//
//  SettingsViewController.swift
//  bluesky
//
//  Created by Joey Lovato on 12/17/18.
//  Copyright © 2018 Blue Sky. All rights reserved.
//

import UIKit
import Foundation

class SettingsViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var companyNameTextField: UITextField!
    @IBOutlet weak var firstLastNameTextField: UITextField!
    @IBOutlet weak var companyEmailTextField: UITextField!
    @IBOutlet weak var agencyEmailTextField: UITextField!
    let dataURL = FileManager.documentDirectoryURL.appendingPathComponent("data")

    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            let jsonDecoder = JSONDecoder()
            let savedJSONData = try Data(contentsOf: dataURL)
            let dataNew = try jsonDecoder.decode(userData.self, from: savedJSONData)
            companyNameTextField.text = dataNew.companyName
            firstLastNameTextField.text = dataNew.firstLastName
            companyEmailTextField.text = dataNew.companyEmail
            agencyEmailTextField.text = dataNew.agencyEmail
        } catch {
            print("error")
        }
        

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        let companyName = companyNameTextField.text
        let firstLastName = firstLastNameTextField.text
        let companyEmail = companyEmailTextField.text
        let agencyEmail = agencyEmailTextField.text
        let test = userData(companyName: companyName ?? "", firstLastName: firstLastName ?? "", companyEmail: companyEmail ?? "", agencyEmail: agencyEmail ?? "")
        do {
            let jsonEncoder = JSONEncoder()
            jsonEncoder.outputFormatting = .prettyPrinted
            let jsonData = try jsonEncoder.encode(test)
            try jsonData.write(to: dataURL)
        } catch {
            print("error2")
        }
    }
}
