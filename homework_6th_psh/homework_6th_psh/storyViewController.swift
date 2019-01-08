//
//  storyViewController.swift
//  homework_6th_psh
//
//  Created by 박소현 on 06/12/2018.
//  Copyright © 2018 박소현. All rights reserved.
//

import UIKit

class storyViewController: UIViewController {

    
    @IBOutlet var imgView: UIImageView!
    var img: UIImage?
    var imgName : String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.imgView.image = UIImage(named: imgName)
        imgView.isUserInteractionEnabled = true
       
        let tap = UITapGestureRecognizer()
        tap.numberOfTapsRequired = 1
        tap.addTarget(self, action: #selector(storyTapped))
        imgView.addGestureRecognizer(tap)
        imgView.isUserInteractionEnabled = true
    }
    
    @objc func storyTapped(){
//        print("ddddd")
        self.dismiss(animated: true, completion: nil)
    }


}
