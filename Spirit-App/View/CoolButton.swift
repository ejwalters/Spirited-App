//
//  CoolButton.swift
//  Spirit-App
//
//  Created by Eric Walters on 12/17/17.
//  Copyright © 2017 Eric Walters. All rights reserved.
//

import Foundation
import UIKit

class CoolButton: UIButton {
    
        override func awakeFromNib() {
            super.awakeFromNib()
            
            layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
            layer.shadowOpacity = 0.8
            layer.shadowRadius = 5.0
            layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
            layer.cornerRadius = 15.0
    }
    
    
}
