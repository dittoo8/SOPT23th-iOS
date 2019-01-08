//
//  Music.swift
//  181027_seminar
//
//  Created by 박소현 on 2018. 10. 27..
//  Copyright © 2018년 박소현. All rights reserved.
//

import Foundation
import UIKit

struct Music {
    var albumImg: UIImage?
    var musicTitle : String
    var singer : String

    init(title: String, singer: String, coverName: String) {
        self.albumImg = UIImage(named : coverName)
        self.musicTitle = title
        self.singer = singer
    }
}
