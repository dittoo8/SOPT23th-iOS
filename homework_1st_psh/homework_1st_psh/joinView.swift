//
//  joinView.swift
//  homework_1st_psh
//
//  Created by 박소현 on 2018. 10. 12..
//  Copyright © 2018년 박소현. All rights reserved.
//

import UIKit

class joinView: UIViewController {

    
    @IBOutlet var EmailField: UITextField!
    @IBOutlet var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func joinOkAction(_ sender: Any) {
        if let dvc = storyboard?.instantiateViewController(withIdentifier: "loginView") as? loginView {
            
            let check = !(EmailField.text?.isEmpty ?? true)
            if check {
                dvc.EmailData = EmailField.text
            }
            
            let check2 = !(nameField.text?.isEmpty ?? true)
            if check2 {
                dvc.NameData = nameField.text
            }
            //present를 해줍니다.
            present(dvc, animated: true)
        }
    }
    
}
