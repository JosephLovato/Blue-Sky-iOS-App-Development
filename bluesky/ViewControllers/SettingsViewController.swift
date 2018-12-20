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
//        do {
//            let dataArray = try Array(contentsOf: dataURL)!
//            let anotherArray = dataArray as Array
//            //let dataArray = data.split(separator: ",")
//            print(dataArray)
//            companyNameTextField.text = anotherArray[0]
//            firstLastNameTextField.text = String(dataArray[1])
//            companyEmailTextField.text = String(dataArray[2])
//            agencyEmailTextField.text = String(dataArray[3])
//        } catch {
//            print("error")
//        }
        

    }
    
    override func viewWillDisappear(_ animated: Bool) {
//        let companyName = companyNameTextField.text
//        let firstLastName = firstLastNameTextField.text
//        let companyEmail = companyEmailTextField.text
//        let agencyEmail = agencyEmailTextField.text
//        let dataArray = [companyName, firstLastName, companyEmail, agencyEmail]
//        //let dataCSV = "\(companyName ?? ""),\(firstLastName ?? ""),\(companyEmail ?? ""),\(agencyEmail ?? "")"
//        do {
//            //try dataCSV.write(to: dataURL, atomically: true, encoding: .utf8)
//            try (dataArray as NSArray).write(to: dataURL, atomically: true)
//        } catch {
//            print("error2")
//        }
    }
}
