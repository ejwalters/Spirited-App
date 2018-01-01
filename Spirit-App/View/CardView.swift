//
//  CardView.swift
//  Spirit-App
//
//  Created by Eric Walters on 12/31/17.
//  Copyright © 2017 Eric Walters. All rights reserved.
//

import UIKit

class CardView: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
//        layer.cornerRadius = 10.0
    }

}
