//
//  ViewController.swift
//  Spirit-Appw
//  Copyright © 2017 Eric Walters. All rights reserved.
//

import UIKit
import Firebase

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
//        welcomeImage.backgroundColor = .clear
//        let blurEffect = UIBlurEffect(style: .light)
//        let blurEffectView = UIVisualEffectView(effect: blurEffect)
//        //always fill the view
//        blurEffectView.frame = welcomeImage.bounds
//        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        
//        welcomeImage.addSubview(blurEffectView)
        
        self.hideKeyboardWhenTappedAround() 
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginPressed(_ sender: CoolButton) {
        
        //TODO: Set up a new user on our Firbase database
//        Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!) { (user, error) in
//            if error != nil {
//                print(error!)
//            } else {
//                //success
//                print("Registration Successful!")
//
//            }
//        }
        
    }
    

    
}

