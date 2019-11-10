//
//  CoreDataManager.swift
//  ChatCloud
//
//  Created by Soumil on 10/11/19.
//  Copyright © 2019 Soumil. All rights reserved.
//

import CoreData

class CoreDataManager {
    static let shared = CoreDataManager()

    /**
     The initializer of this class is marked with private to prevent any other object
     creation other than the shared object, as it is a singletone class.
     */
    private init() {
    }
}
