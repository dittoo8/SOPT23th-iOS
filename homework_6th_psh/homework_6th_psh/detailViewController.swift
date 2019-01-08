//
//  detailViewController.swift
//  homework_6th_psh
//
//  Created by 박소현 on 04/12/2018.
//  Copyright © 2018 박소현. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    var img: UIImage?
    var contents: String?
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var contentsLabel: UILabel!
    @IBOutlet var redHeart: UIImageView!
    @IBOutlet var likeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.contentsLabel.text = contents
        self.imgView.image = img
        
        let tap = UITapGestureRecognizer()
        tap.numberOfTapsRequired = 2
        tap.addTarget(self, action: #selector(tapAction))
        imgView.addGestureRecognizer(tap)
        imgView.isUserInteractionEnabled = true
        
    }
    
    @objc func tapAction(){
        if likeLabel.isHidden == true {
            likeLabel.isHidden = false
            redHeart.isHidden = false
        } else { likeLabel.isHidden = true
            redHeart.isHidden = true
        }
    }


}
