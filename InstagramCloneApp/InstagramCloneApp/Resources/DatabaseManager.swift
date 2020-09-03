//
//  DatabaseManager.swift
//  InstagramCloneApp
//
//  Created by Jonathan Shoemaker on 8/26/20.
//  Copyright © 2020 Jonathan Shoemaker. All rights reserved.
//

import Foundation
import FirebaseDatabase

public class DatabaseManager {
    
    static let shared = DatabaseManager()
    
    //MARK: Public
    ///Check if username and email is available
    ///-Parameters
    ///     -email: String representing email
    ///     -username: String representing username
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        
    }
    
    
}
