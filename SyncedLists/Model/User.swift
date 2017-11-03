//
//  User.swift
//  SyncedLists
//
//  Created by Kevin Largo on 10/17/17.
//  Copyright © 2017 Kevin Largo. All rights reserved.
//

import Firebase
import Foundation

struct User {
    var name: String;
    var email: String;
    
    // Firebase userID uses "," instead of "."
    var id: String {
        return self.email.replacingOccurrences(of: ".", with: ",");
    }
    
    // Constructor for Firebase-loaded User
    init(authData: User) {
        self.name = authData.name;
        self.email = authData.email;
    }
    
    // Constructor for locally created User
    init(name: String, email: String) {
        self.name = name;
        self.email = email;
    }
}
