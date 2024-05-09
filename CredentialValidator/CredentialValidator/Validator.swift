//
//  Validator.swift
//  CredentialValidator
//
//  Created by WCG141 on 08/05/24.
//

import Foundation
public struct Validator {
    public static func isValidEmail(_ email: String) -> Bool {
        // Regular expression pattern for a valid email address
        let emailRegex = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\. [A-Za-z]{2,3"
        let emailPredicate = NSPredicate( format: "SELF MATCHES %0",emailRegex)
        return emailPredicate.evaluate (with: email)
    }
    
    public static func sayHello() {
        print ("Hello")
    }
}
