//
//  MusicCell.swift
//  181027_seminar
//
//  Created by 박소현 on 2018. 10. 27..
//  Copyright © 2018년 박소현. All rights reserved.
//

import UIKit

class MusicCell: UITableViewCell {

    @IBOutlet var albumImg: UIImageView!
    @IBOutlet var musicTitle: UILabel!
    @IBOutlet var singer: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        albumImg.layer.cornerRadius = 3
        albumImg.layer.masksToBounds = true
    }


}
