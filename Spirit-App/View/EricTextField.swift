//
//  EricTextField.swift
//  Spirit-App
//
//  Created by Eric Walters on 12/27/17.
//  Copyright © 2017 Eric Walters. All rights reserved.
//

import UIKit


class EricTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.borderStyle = UITextBorderStyle.none
        self.backgroundColor = UIColor.clear
        
        let borderLine = UIView()
        let height = 1.0
        borderLine.frame = CGRect(x: 0, y: Double(self.frame.height) - height, width: Double(self.frame.width), height: height)
        borderLine.backgroundColor = UIColor.white
        self.addSubview(borderLine)
//        UIEdgeInsetsInsetRect(bounds,UIEdgeInsetsMake(0, 15, 0, 15))

    }
    
    
}
