//
//  CertRequestViewController.swift
//  bluesky
//
//  Created by Joey Lovato on 12/17/18.
//  Copyright © 2018 Blue Sky. All rights reserved.
//

import UIKit

class CertRequestViewController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var recipientCompanyName: UITextField!
    @IBOutlet weak var recipientEmail: UITextField!
    @IBOutlet weak var recipientStreetAddress: UITextField!
    @IBOutlet weak var recipientCity: UITextField!
    @IBOutlet weak var recipientState: UITextField!
    @IBOutlet weak var recipientZipCode: UITextField!
    @IBOutlet weak var recipientDescription: UITextView!
    @IBOutlet weak var recipientAdditionalInsured: UISwitch!
    @IBOutlet weak var recipientWaiver: UISwitch!
    @IBOutlet weak var submitButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillChange(notification:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillChange(notification:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillChange(notification:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    }
    
    @IBAction func onButtonPush(_ sender: Any) {
        submitButton.backgroundColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
    }
    
    @IBAction func onButtonRelease(_ sender: Any) {
        submitButton.backgroundColor = #colorLiteral(red: 0.1589999944, green: 0.7070000172, blue: 0.08600000292, alpha: 1)
    }
    
    @IBAction func onButtonReleaseOutisde(_ sender: Any) {
        submitButton.backgroundColor = #colorLiteral(red: 0.1589999944, green: 0.7070000172, blue: 0.08600000292, alpha: 1)
    }
    @objc func keyBoardWillChange(notification: Notification) {
        let userInfo = notification.userInfo!
        
        let keyboardScreenEndFrame = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let keyboardViewEndFrame = view.convert(keyboardScreenEndFrame, from: view.window)
        
        if notification.name == Notification.Name.UIKeyboardWillHide {
            scroll.contentInset = UIEdgeInsets.zero
        } else {
            scroll.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardViewEndFrame.height, right: 0)
        }
        
        scroll.scrollIndicatorInsets = scroll.contentInset
        
    }
    
}
