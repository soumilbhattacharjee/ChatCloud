//
//  LoginVC.swift
//  ChatCloud
//
//  Created by Soumil on 09/11/19.
//  Copyright © 2019 Soumil. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func loginButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: loginSegue, sender: self)
    }
}
