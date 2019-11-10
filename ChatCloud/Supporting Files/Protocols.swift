//
//  Protocols.swift
//  ChatCloud
//
//  Created by Soumil on 10/11/19.
//  Copyright © 2019 Soumil. All rights reserved.
//

import UIKit

protocol AlertController {
}

extension AlertController where Self: UIViewController {
    func showAlert(title: String, message: String, alertCompletion: (() -> Void)? = nil, buttonTitle: String, buttonAction: ((UIAlertAction) -> Void)? = nil ) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title: buttonTitle, style: .default, handler: buttonAction)
        alert.addAction(alertAction)
        self.present(alert, animated: true, completion: alertCompletion)
    }
}
