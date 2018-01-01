//
//  PostCell.swift
//  Spirit-App
//
//  Created by Eric Walters on 12/30/17.
//  Copyright © 2017 Eric Walters. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {

    @IBOutlet weak var headerImage: UIImageView!
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var likeImg: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let tap = UITapGestureRecognizer(target: self, action: #selector(likeTapped))
        tap.numberOfTapsRequired = 1
        likeImg.addGestureRecognizer(tap)
        likeImg.isUserInteractionEnabled = true
    }
    

    
    @objc func likeTapped(sender: UITapGestureRecognizer) {
        
        if self.likeImg.image == UIImage(named: "like") {
            self.likeImg.image = UIImage(named: "dislike")
        } else {
            self.likeImg.image = UIImage(named: "like")
        }
        
        
    }
    
    
}
