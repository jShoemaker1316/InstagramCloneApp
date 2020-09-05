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
// shows when and how to add below at 22 minutes and 24 minutes of: https://www.youtube.com/watch?v=KAZubNa5ErQ
    private let database = Database.database().reference()
    
    //MARK: Public
    ///Check if username and email is available
    ///- Parameters
    ///     -email: String representing email
    ///     -username: String representing username
    public func canCreateNewUser(with email: String, username: String, completion: (Bool) -> Void) {
        
    }
    
    ///Inserts new user to database
    ///- Parameters
    ///     -email: String representing email
    ///     -username: String representing username
    ///     -completion: Async callback for result if database entry succeeded
    public func insertNewUser(with email: String, username: String, completion: @escaping (Bool) -> Void) {
        database.child(email).setValue(["username": username]) { error, _ in
            if error == nil {
                //succeeded
                completion(true)
                return
            }
            else {
                //failed
                completion(false)
                return
            }
        }
    }
    
    
}
