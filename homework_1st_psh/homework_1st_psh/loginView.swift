//
//  loginView.swift
//  homework_1st_psh
//
//  Created by 박소현 on 2018. 10. 12..
//  Copyright © 2018년 박소현. All rights reserved.
//

import UIKit

class loginView: UIViewController {

    @IBOutlet var EmailLabel: UILabel!
    @IBOutlet var NameLabel: UILabel!
    var EmailData : String?
    var NameData : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view.
    }
    
    //전달받은 data를 셋팅하기 위한 함수
    func setup() {
        //전달받은 data에 값이 있다면 label의 text를 설정해 줍니다.
        if let transData = EmailData {
            EmailLabel.text = transData}
       if let transData2 = NameData {
            NameLabel.text = transData2
        }
    }
  
    @IBAction func unwind(_ sender: Any) {
         performSegue(withIdentifier: "unwindToMain", sender: self)
    }
    
}
