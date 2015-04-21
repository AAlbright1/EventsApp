//
//  LogInViewController.swift
//  EventsApp
//
//  Created by kphillips on 4/7/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var passcodeTextField: UITextField!
    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onLogInButtonTapped(sender: UIButton) {
        if usernameTextField.text == "" || passcodeTextField.text == "" {
            
            showAlert("Please enter a username and passcode", nil, self)
        }
        else {
            User.loginUser(usernameTextField.text, password: passcodeTextField.text, completed: { (result, error) -> Void in
                if error != nil {
                    showAlertWithError(error, self)
                }
                else {
                self.dismissViewControllerAnimated(true, completion: nil)
                }
            })
        }
    }
    
    @IBAction func onRegisterButtonTapped(sender: UIButton) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
