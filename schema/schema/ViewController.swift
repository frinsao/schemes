//
//  ViewController.swift
//  Schema
//
//  Created by Frinsao on 27/8/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        #if LOCAL
        
        guard let email = Bundle.main.object(forInfoDictionaryKey: "CONFIG_EMAIL") as? String else {
            fatalError("email not found")
        }
        
        guard let password = Bundle.main.object(forInfoDictionaryKey: "CONFIG_PASSORD") as? String else {
            fatalError("Password not found")
        }
        emailTextField.text = email
        passwordTextField.text = password
        #endif
    }
}

