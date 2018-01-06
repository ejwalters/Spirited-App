//
//  PopUpVC.swift
//  Spirit-App
//
//  Created by Eric Walters on 12/31/17.
//  Copyright © 2017 Eric Walters. All rights reserved.
//

import UIKit
import Firebase
import SwiftKeychainWrapper

class PopUpVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker: UIImagePickerController!
    var imageSelected = false
    @IBOutlet weak var addImage: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(imageAddTapped))
        tap.numberOfTapsRequired = 1
        addImage.addGestureRecognizer(tap)
        addImage.isUserInteractionEnabled = true

        // Do any additional setup after loading the view.
    }
    @IBAction func closePopUp(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
    //Present the iPhone's photo library for the user to select
    @objc func imageAddTapped(sender: UITapGestureRecognizer) {
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerEditedImage] as? UIImage {
            addImage.image = image
            imageSelected = true
            print("ERIC: A valid image was selected")
        } else {
            print("ERIC: A valid image was not selected")
        }
        print("ERIC: in the imagePicker Function")
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    
//    @IBAction func postButtonTapped(_ sender: Any) {
//        guard let caption = captionField.text, caption != "" else {
//            print("ERIC: Caption must be entered")
//            return
//        }
//        guard let img = imageAdd.image, imageSelected == true else {
//            print("ERIC: An Image must be selected")
//            return
//        }
//        
//        if let imgData = UIImageJPEGRepresentation(img, 0.2) {
//            
//            let imgUid = NSUUID().uuidString
//            let metadata = FIRStorageMetadata()
//            metadata.contentType = "image/jpeg"
//            
//            DataService.ds.REF_POST_IMAGES.child(imgUid).put(imgData,metadata: metadata) { (metadata, error) in
//                if error != nil {
//                    print("ERIC: Unable to upload image to firebase storage")
//                } else {
//                    print("ERIC: Succesfully uploaded image to firebase storage")
//                    let downloadURL = metadata?.downloadURL()?.absoluteString
//                    if let url = downloadURL {
//                        self.postToFirebase(imgUrl: url)
//                    }
//                }
//            }
//        }
//    }
    
}
