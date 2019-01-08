//
//  contentsView.swift
//  homework_6th_psh
//
//  Created by 박소현 on 04/12/2018.
//  Copyright © 2018 박소현. All rights reserved.
//

import UIKit

class contentsView: UIViewController {


    

    @IBOutlet var collectionView1: UICollectionView!
    @IBOutlet var collectionView2: UICollectionView!
    var collectionList : [collections] = []
    
    @IBOutlet var profile: UIImageView!
    @IBOutlet var contentsCountLabel: UILabel!
    
    @IBOutlet var story1Button: UIButton!
    @IBOutlet var story2Button: UIButton!
    @IBOutlet var story3Button: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layoutIfNeeded()
        story1Button.layer.cornerRadius = 0.5 * story1Button.bounds.size.width
        story2Button.layer.cornerRadius = 0.5 * story2Button.bounds.size.width
        story3Button.layer.cornerRadius = 0.5 * story3Button.bounds.size.width
        
        setcollectionData()
        collectionView1.delegate = self
        collectionView1.dataSource = self
        collectionView2.delegate = self
        collectionView2.dataSource = self
        contentsCountLabel.text = "\(collectionList.count)"
    }
    
    @IBAction func followingViewAction(_ sender: Any) {
        let dvc = storyboard?.instantiateViewController(withIdentifier: "followingView") as! followingViewController
        navigationController?.pushViewController(dvc, animated: true)
    }
    
    @IBAction func tab1Action(_ sender: Any) {
      collectionView2.isHidden = true
        collectionView1.isHidden = false
      
    }
    
    @IBAction func tab2Action(_ sender: Any) {
        collectionView1.isHidden = true
        collectionView2.isHidden = false
    }
    
    @IBAction func tab3Action(_ sender: Any) {
        collectionView1.isHidden = true
        collectionView2.isHidden = true
    }
    
    @IBAction func story1Action(_ sender: Any) {
        if let dvc = storyboard?.instantiateViewController(withIdentifier: "storyVC") as? storyViewController {
            dvc.imgName = "story_korea01"
            present(dvc, animated: true)


        }

    }
    @IBAction func story2Action(_ sender: Any) {
        if let dvc = storyboard?.instantiateViewController(withIdentifier: "storyVC") as? storyViewController {
            dvc.imgName = "story_spain01"
            present(dvc, animated: true)

            
        }
    }
    
    @IBAction func story3Action(_ sender: Any) {
        if let dvc = storyboard?.instantiateViewController(withIdentifier: "storyVC") as? storyViewController {
            dvc.imgName = "story_portugal01"
            present(dvc, animated: true)

            
        }
    }
}



extension contentsView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionView1 {
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection", for: indexPath) as! CollectionViewCell

            let collection = collectionList[indexPath.item]
            cell.imgView.image = collection.img
//        cell.contents.text = collection.contents
            return cell

            
        }
        else {
            var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collection2", for: indexPath) as! CollectionView2Cell
            
            let collection = collectionList[indexPath.item]
            cell.imgView.image = collection.img
            cell.contents.text = collection.contents
            
            return cell

        }
        
    }
}

extension contentsView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var width: CGFloat = 0
        var height: CGFloat = 0
        if collectionView == collectionView1 {
        width = (view.frame.width - 4 ) / 3
        height = (view.frame.width - 4 ) / 3
           
            return CGSize(width: width, height: height)
        } else  {
            width = (view.frame.width)
            height = (view.frame.width) + 205
            
            return CGSize(width: width, height: height)
        }
        
       
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 1)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let Detail = storyboard?.instantiateViewController(withIdentifier: "Detail") as! detailViewController
               let collection = collectionList[indexPath.row]
        Detail.img = collection.img
        Detail.contents = collection.contents

        
        navigationController?.pushViewController(Detail, animated: true)
    }

    
}

extension contentsView {
    
    func setcollectionData() {
        let collection0 = collections(contents: "산세바스티안 !", imgName: "sanse01")
        let collection1 = collections(contents: "넘나 더웠던 스페인광장 ", imgName: "spainpalace01")
        let collection2 = collections(contents: "캄프누우우 ", imgName: "campnou01")
        let collection3 = collections(contents: "내 인생에 첫 중동 공항 ...", imgName: "doha01")
        let collection4 = collections(contents: "포르투는 낮에도 이뿌다", imgName: "porto01")
        let collection5 = collections(contents: "세고비아 ! ", imgName: "segovia01")
        let collection6 = collections(contents: "에펠탑의 해질녁 ", imgName: "eiffel01")
        let collection7 = collections(contents: "하르방과 스타벅스 제주메뉴 ", imgName: "jeju01")
        let collection8 = collections(contents: "리스본의 무슨 성 ... ", imgName: "lisbon01")
        let collection9 = collections(contents: "파리 개선문 >_< ", imgName: "paris01")
        let collection10 = collections(contents: "경복궁 단풍 ..", imgName: "tree01")
        collectionList = [collection0, collection1, collection2, collection3, collection4, collection5, collection6, collection7, collection8, collection9, collection10]
    }
}
