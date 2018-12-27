//
//  AutoIDRequestViewController.swift
//  bluesky
//
//  Created by Joey Lovato on 12/17/18.
//  Copyright © 2018 Blue Sky. All rights reserved.
//

import UIKit


class AutoIDRequestViewController: UIViewController {
    
    
    @IBOutlet weak var viewInScroll: UIView!
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var makeTextField: UITextField!
    @IBOutlet weak var modelTextField: UITextField!
    @IBOutlet weak var vimNumberTextField: UITextField!
    @IBOutlet weak var coverageSegmentedButton: UISegmentedControl!
    @IBOutlet weak var addDeleteSegmentedButton: UISegmentedControl!
    @IBOutlet weak var autoIDCardLabel: UILabel!
    @IBOutlet weak var autoIDCard: UISwitch!
    @IBOutlet weak var submitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let font = UIFont.systemFont(ofSize: 20)
        coverageSegmentedButton.setTitleTextAttributes([NSAttributedStringKey.font: font], for: .normal)
        addDeleteSegmentedButton.setTitleTextAttributes([NSAttributedStringKey.font: font], for: .normal)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillChange(notification:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillChange(notification:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillChange(notification:)), name: NSNotification.Name.UIKeyboardWillChangeFrame, object: nil)
    }

    @IBAction func onButtonPush(_ sender: Any) {
        submitButton.backgroundColor = #colorLiteral(red: 0.1960784346, green: 0.3411764801, blue: 0.1019607857, alpha: 1)
    }
    
    @IBAction func onButtonRelease(_ sender: Any) {
        let message = yearTextField.text!
        print(message)
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
    
    @IBAction func addIDCardToggle(_ sender: Any) {
        if addDeleteSegmentedButton.selectedSegmentIndex == 0 {
            autoIDCard.isHidden = false
            autoIDCardLabel.isHidden = false
        } else if addDeleteSegmentedButton.selectedSegmentIndex == 1 {
                autoIDCard.isHidden = true
                autoIDCardLabel.isHidden = true
        }
    }
    
    func sendEmail(bodyText: String) {
        
    }
    
}
