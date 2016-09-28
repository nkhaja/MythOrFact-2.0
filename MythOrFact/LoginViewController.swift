//
//  LoginViewController.swift
//  MythOrFact
//
//  Created by Nabil K on 2016-07-07.
//  Copyright © 2016 Nabil. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var emailField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // If we have the uid stored, the user is already logger in - no need to sign in again!
        
        if DataService.dataService.CURRENT_USER_REF != nil {
            self.performSegue(withIdentifier: "CurrentlyLoggedIn", sender: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func tryLogin(_ sender: AnyObject) {
        
        let email = emailField.text
        let password = passwordField.text
        
        if email != "" && password != "" {
            
            // Login with the Firebase's authUser method
            
            //            DataService.dataService.BASE_REF.authUser(email, password: password, withCompletionBlock: { error, authData in
            
            //            let credential = FIREmailPasswordAuthProvider.credentialWithEmail(String, password: password)
            //            FIRAuth.signInWithCredential(credential, completion: {(user, error) in
            
            FIRAuth.auth()?.signIn(withEmail: email!, password: password!) { (user, error) in
                
                if error != nil {
                    print(error)
                    self.loginErrorAlert("Oops!", message: "Check your username and password.")
                } else {
                    
                    // Be sure the correct uid is stored.
                    
                    UserDefaults.standard.setValue(user!.uid, forKey: "uid")
                    
                    // Enter the app!
                    
                    self.performSegue(withIdentifier: "CurrentlyLoggedIn", sender: nil)
                }
            }//)
            
        } else {
            
            // There was a problem
            
            loginErrorAlert("Oops!", message: "Don't forget to enter your email and password.")
        }
    }
    
    func loginErrorAlert(_ title: String, message: String) {
        
        // Called upon login error to let the user know login didn't work.
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

}
