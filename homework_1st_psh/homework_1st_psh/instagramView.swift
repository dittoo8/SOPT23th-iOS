//
//  instagramView.swift
//  homework_1st_psh
//
//  Created by 박소현 on 2018. 10. 15..
//  Copyright © 2018년 박소현. All rights reserved.
//

import UIKit

class instagramView: UIViewController {
    
    @IBOutlet var likeLabel: UILabel!
    @IBOutlet var heartImg2: UIButton!
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       let tap = UITapGestureRecognizer()
        tap.numberOfTapsRequired = 2
        tap.addTarget(self, action: #selector(tapAction))
        imgView.addGestureRecognizer(tap)
        imgView.isUserInteractionEnabled = true// Do any additional setup after loading the view.
    }
    

    
    @objc func tapAction(){
        if likeLabel.isHidden == true {
            likeLabel.isHidden = false
            heartImg2.isHidden = false
        } else { likeLabel.isHidden = true
            heartImg2.isHidden = true
        }
    }
 
}
