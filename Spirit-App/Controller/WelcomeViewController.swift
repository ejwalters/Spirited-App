//
//  ViewController.swift
//  Spirit-Appw
//  Copyright © 2017 Eric Walters. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeImage: UIImageView!
    @IBOutlet weak var emailText: EricTextField!
    @IBOutlet weak var passwordText: EricTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 50))
        let gradient = CAGradientLayer()
        
        gradient.frame = view.bounds
        gradient.colors = [UIColor.white.cgColor, UIColor.black.cgColor]
        
        view.layer.insertSublayer(gradient, at: 0)
        
        self.hideKeyboardWhenTappedAround()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "goToFeed", sender: nil)
        } else {
            //User Not logged in
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginPressed(_ sender: CoolButton) {
        Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { (user, error) in
            if error != nil {
                print(error!)
            }  else {
                print("Log in successful!")
                self.performSegue(withIdentifier: "goToFeed", sender: nil)
            }
            
        }
        
    }
}

