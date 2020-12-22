//
//  User.swift
//  SinglePass
//
//  Created by Dabira Akinwumi on 2020-10-28.
//  Copyright © 2020 Liquidcoder. All rights reserved.
//

import Foundation
import Firebase

struct User {
//    var email: String? = nil
    func getUser()-> String{
        if Auth.auth().currentUser != nil {
            let uid = Auth.auth().currentUser?.uid
            return uid!
          // ...
        } else {
          return "null"
        }
        
    }
    
   func getEmail()-> String{
        if Auth.auth().currentUser != nil {
            let email = Auth.auth().currentUser?.email
            return email!
          // ...
        } else {
          return "null"
        }
    }
}
