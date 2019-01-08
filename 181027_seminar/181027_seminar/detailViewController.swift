//
//  detailViewController.swift
//  181027_seminar
//
//  Created by 박소현 on 2018. 10. 27..
//  Copyright © 2018년 박소현. All rights reserved.
//

import UIKit
import AVFoundation

class detailViewController: UIViewController, AVAudioPlayerDelegate {

    var albumImg: UIImage?
    var musicTitle: String?
    var singer: String?
    
    var player: AVAudioPlayer!
  
    @IBOutlet var albumImgView: UIImageView!
    @IBOutlet var musicTitleLabel: UILabel!
    @IBOutlet var singerLabel: UILabel!
    
    @IBOutlet var musicButton: UIButton!
    
    func initializePlayer() {
        guard let soundAsset: NSDataAsset = NSDataAsset(name : "taeyeon"  ) else {
            print("음원 파일 에셋을 가져올 수 없습니다")
            return
        }
        do {
            try self.player = AVAudioPlayer(data: soundAsset.data)
            self.player.delegate = self
        } catch let error as NSError {
            print("플레이어 초기화 실패")
        }
        
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        albumImgView.image = albumImg
        musicTitleLabel.text = musicTitle
        singerLabel.text = singer
        self.initializePlayer()
    }

    @IBAction func touchUpPlayPauseButton(_ sender:UIButton) {
       
        sender.isSelected = !sender.isSelected
        
        if sender.isSelected {
            self.player?.play()
        } else {
            self.player?.pause()
        }
        
    }
    
}
