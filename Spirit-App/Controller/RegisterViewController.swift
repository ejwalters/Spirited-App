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
        Auth.auth().createUser(withEmail: emailAddress.text!, password: password.text!, completion: { (user, error) in
            if error != nil {
                print("ERIC: Unable to authenticate with Firebase using email")
            } else {
                print("ERIC: Successfully authenticated with Firebase")
                if let user = user {
                    let userData = ["provider": user.providerID]
                    let firstname = ["firstname": self.firstName.text!]
                    let lastname = ["lastname": self.lastName.text!]
                    let email = ["email": self.emailAddress.text!]
                    self.completeSignIn(id: user.uid, userData: userData)
                    //When account is first created, add the name and email to the database
                    DataService.ds.updateFirebaseInfo(uid: user.uid, firstname: firstname, lastname: lastname, email: email)
                }
                
            }
        })
            
    }
    
}
