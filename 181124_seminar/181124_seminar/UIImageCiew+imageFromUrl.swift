//
//  UIViewController+extensions.swift
//  181124_seminar
//
//  Created by 박소현 on 24/11/2018.
//  Copyright © 2018 박소현. All rights reserved.
//


import UIKit
import Kingfisher

extension UIImageView {
    public func imageFromUrl(_ urlString: String?, defaultImgPath : String) {
        let defaultImg = UIImage(named: defaultImgPath)
        if let url = urlString {
            if url.isEmpty {
                self.image = defaultImg
            } else {
                self.kf.setImage(with: URL(string: url), placeholder: defaultImg, options: [.transition(ImageTransition.fade(0.5))])
            }
        } else {
            self.image = defaultImg
        }
    }
}
