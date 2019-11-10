//
//  FirebaseManager.swift
//  ChatCloud
//
//  Created by Soumil on 10/11/19.
//  Copyright © 2019 Soumil. All rights reserved.
//

import Firebase

class FirebaseManager {
    static let shared = FirebaseManager()

    /**
      The initializer of this class is marked with private to prevent any other object
     creation other than the shared object, as it is a singletone class.
     */
    private init() {
    }

    /** Description:
     - Parameter keys:
     - Returns: No Parameter
     */
    func createNewUser(with userId: String, and password: String) {
        Auth.auth().createUser(withEmail: userId, password: password) { (_, _) in
            print("createNewUser")
        }
    }
}
