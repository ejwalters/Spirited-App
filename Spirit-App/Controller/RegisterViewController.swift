//
//  RegisterViewController.swift
//  Spirit-App
//
//  Created by Eric Walters on 12/27/17.
//  Copyright © 2017 Eric Walters. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var firstName: EricTextField!
    @IBOutlet weak var lastName: EricTextField!
    @IBOutlet weak var emailAddress: EricTextField!
    @IBOutlet weak var password: EricTextField!
    
    override func viewDidLoad() {
        
        
        self.hideKeyboardWhenTappedAround() 
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func createAccountPressed(_ sender: CoolButton) {
            
            //TODO: Set up a new user on our Firbase database
            Auth.auth().createUser(withEmail: emailAddress.text!, password: password.text!) { (user, error) in
                if error != nil {
                    print(error!)
                } else {
                    //success
                    print("Registration Successful!")
                    self.performSegue(withIdentifier: "goToFeed", sender: nil)
                    
                }
            }
            
        }
    
}
