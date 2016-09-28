//
//  RegisterViewController.swift
//  MythOrFact
//
//  Created by Nabil K on 2016-07-07.
//  Copyright © 2016 Nabil. All rights reserved.
//

import UIKit
import Firebase

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createAccount(_ sender: AnyObject) {
        
        let username = usernameField.text
        let email = emailField.text
        let password = passwordField.text
        
        if username != "" && email != "" && password != "" {
            
            // Set Email and Password for the New User.
            
            //            DataService.dataService.BASE_REF.createUser(email, password: password, withValueCompletionBlock: { error, result in
            
            FIRAuth.auth()?.createUser(withEmail: email!, password: password!, completion: { (user, error) in
                
                if error != nil {
                    
                    // There was a problem.
                    self.signupErrorAlert("Oops!", message: "Having some trouble creating your account. Try again.")
                    print(error)
                    
                } else {
                    
                    // Create and Login the New User with authUser
                    //DataService.dataService.BASE_REF.authUser(email, password: password, withCompletionBlock: { error, authData in
                    
                    let userData = ["provider": "email"/* authData.provider! */, "email": email!, "username": username!]
                    
                    // Seal the deal in DataService.swift.
                    DataService.dataService.createNewAccount(user!.uid, user: userData)
                    //})
                    
                    // Store the uid for future access - handy!
                    UserDefaults.standard.setValue(user?.uid, forKey: "uid")
                    
                    // Enter the app.
                    self.performSegue(withIdentifier: "NewUserLoggedIn", sender: nil)
                }
            })
            
        } else {
            signupErrorAlert("Oops!", message: "Don't forget to enter your email, password, and a username.")
        }
        
        
    }
    
    func signupErrorAlert(_ title: String, message: String) {
        
        // Called upon signup error to let the user know signup didn't work.
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func cancelCreateAccount(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: {})
    }
    
}
