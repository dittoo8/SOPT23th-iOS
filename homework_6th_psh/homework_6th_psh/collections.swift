//
//  collectionList.swift
//  homework_6th_psh
//
//  Created by 박소현 on 04/12/2018.
//  Copyright © 2018 박소현. All rights reserved.
//

import Foundation
import UIKit

struct collections {
    var img: UIImage?
    var contents: String?
    
    init(contents: String, imgName: String) {
        self.img = UIImage(named : imgName)
        self.contents = contents
    }
}
