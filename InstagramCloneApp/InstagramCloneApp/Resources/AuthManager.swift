//
//  AuthManager.swift
//  InstagramCloneApp
//
//  Created by Jonathan Shoemaker on 8/26/20.
//  Copyright © 2020 Jonathan Shoemaker. All rights reserved.
//

import Foundation
import FirebaseAuth

public class AuthManager {
    
    static let shared = AuthManager()

    public func registerNewUser(username: String, email: String, password: String, completion: @escaping (Bool) -> Void) {
        //check if username is available
        
        //check if email is available
        
        DatabaseManager.shared.canCreateNewUser(with: email, username: username) { canCreate in
            if canCreate {
                //create account
                Auth.auth().createUser(withEmail: email, password: password) { result, error in
                    guard error == nil, result != nil else {
                        //Firebase auth could not create account
                        completion(false)
                        return
                    }
                    //Insert into database
                    DatabaseManager.shared.insertNewUser(with: email, username: username) { inserted in
                        if inserted {
                            completion(true)
                            return
                        }
                        else {
                            //failed to insert to database
                            completion(false)
                            return
                        }
                    }
                    
                }
                
            }
            
            else {
                completion(false)
            }
            
        }
        
    }

    public func loginUser(username: String?, email: String?, password: String, completion: @escaping ((Bool) ->Void)) {
        if let email = email {
            //email log in
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                guard authResult != nil, error == nil else {
                    completion(false)
                    return
                }
                completion(true)
            }
        }
        else if let username = username {
            //username login
            print(username)
        }
    }
}
