//
//  GradientView.swift
//  Spirit-App
//
//  Created by Eric Walters on 12/17/17.
//  Copyright © 2017 Eric Walters. All rights reserved.
//

import Foundation
import UIKit

class GradientView: UIView {
    
    override open class var layerClass: AnyClass {1
        return CAGradientLayer.classForCoder()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let gradientLayer = self.layer as! CAGradientLayer
        gradientLayer.colors = [UIColor.darkGray.cgColor, UIColor.lightGray.cgColor, UIColor.white.cgColor]
    }
    
}
