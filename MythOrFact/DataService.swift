//
//  DataService.swift
//  MythOrFact
//
//  Created by Nabil K on 2016-07-07.
//  Copyright © 2016 Nabil. All rights reserved.
//

import Foundation
import Firebase

class DataService {
    static let dataService = DataService()
    
    fileprivate var _BASE_REF = BASE_URL
    fileprivate var _USER_REF = BASE_URL.child("users")
    fileprivate var _JOKE_REF = BASE_URL.child("testBranch")
    
    var BASE_REF: FIRDatabaseReference {
        return _BASE_REF
    }
    
    var USER_REF: FIRDatabaseReference {
        return _USER_REF
    }
    
    var CURRENT_USER_REF: FIRDatabaseReference? {
        if let userID = UserDefaults.standard.value(forKey: "uid") as? String {
            return BASE_URL.child("users").child(userID)
        } else {
            return nil
        }
    }
    
    var JOKE_REF: FIRDatabaseReference {
        return _JOKE_REF
    }
    
    
    func createNewAccount(_ uid: String, user: Dictionary<String, String>) {
        
        // A User is born.
        
        USER_REF.child(uid).updateChildValues(user)
    }
    
    func createNewJoke(_ joke: Dictionary<String, AnyObject>) {
        
        // Save the Joke
        // JOKE_REF is the parent of the new Joke: "jokes".
        // childByAutoId() saves the joke and gives it its own ID.
        
        let firebaseNewJoke = JOKE_REF.childByAutoId()
        
        // setValue() saves to Firebase.
        
        firebaseNewJoke.setValue(joke)
    }
}
