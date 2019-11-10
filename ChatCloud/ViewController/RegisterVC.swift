//
//  RegisterVC.swift
//  ChatCloud
//
//  Created by Soumil on 10/11/19.
//  Copyright © 2019 Soumil. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func prepareUI() {
        if #available(iOS 11.0, *) {
            emailTxt.smartQuotesType = .no
            emailTxt.smartDashesType = .no
            passwordTxt.smartQuotesType = .no
            passwordTxt.smartDashesType = .no
        }
    }
}
extension RegisterVC: AlertController {
    
    @IBAction func registerButtonAction(_ sender: UIButton) {
        guard let emailId = emailTxt.text, let password = passwordTxt.text else {return}
        showAlert(title: "Registration Successful!!", message: "A verification link is sent to your email. Please verify your email and then try login.", buttonTitle: "Ok") { (_) in
            self.navigationController?.popToRootViewController(animated: true)
        }
    }
}
