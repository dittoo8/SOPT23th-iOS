//
//  WriteBoardVC.swift
//  181124_seminar
//
//  Created by 박소현 on 24/11/2018.
//  Copyright © 2018 박소현. All rights reserved.
//

import UIKit

class WriteBoardVC: UIViewController {

    @IBOutlet var titleLabel: UITextField!
    @IBOutlet var contentsTextView: UITextView!
    @IBOutlet var contentImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTap()
        
    }
    
    func setupTap(){
        let viewtap = UIGestureRecognizer(target: self, action: #selector(viewTapped))
        let imageTap = UITapGestureRecognizer(target: self, action: #selector(imageTapped))
        viewtap.delegate = self
        imageTap.delegate = self
        self.view.addGestureRecognizer(viewtap)
        self.contentImage.addGestureRecognizer(imageTap)
    }
    
    @objc func viewTapped() {
        self.view.endEditing(true)
    }
    
    @objc func imageTapped() {
        let picker = UIImagePickerController()
        picker.delegate = self
        let actionSheet = UIAlertController(title: "Photo source", message: "Choose a source", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (action) in
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                picker.sourceType = .camera
                self.present(picker, animated: true)
            } else {
                print("not available")
            }
        }))
        actionSheet.addAction(UIAlertAction(title: "Photo Library", style: .default, handler: { (action) in
            picker.sourceType = .photoLibrary
            self.present(picker, animated: true)
        }))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        self.present(actionSheet, animated: true)
        
    }
}

extension WriteBoardVC: UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        var newImg = UIImage()
        
        if let possibleImg = info[.editedImage] as? UIImage {
            newImg = possibleImg
        }
        else if let possibleImg = info[.originalImage] as? UIImage {
            newImg = possibleImg
        }
        else {
            return
        }
        contentImage.image = newImg
        dismiss(animated: true, completion: nil)
    }
}

extension WriteBoardVC: UIGestureRecognizerDelegate {
    
}
