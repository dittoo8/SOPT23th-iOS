//
//  ViewController.swift
//  homework_1st_psh
//
//  Created by 박소현 on 2018. 10. 12..
//  Copyright © 2018년 박소현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var EmailField: UITextField!
    @IBOutlet var PasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
 //로그인은 present
    @IBAction func loginAction(_ sender: Any) {
        if let dvc = storyboard?.instantiateViewController(withIdentifier: "loginView") as? loginView {
           
            let check = !(EmailField.text?.isEmpty ?? true)
            if check {
                dvc.EmailData = EmailField.text
            }
            //present를 해줍니다.
            present(dvc, animated: true)
        }
    }
    
    //회원가입은 push
    @IBAction func joinView(_ sender: Any) {
        guard let dvc = storyboard?.instantiateViewController(withIdentifier: "joinView") as? joinView else { return }
       
        //네비게이션 컨트롤러를 이용하여 push를 해줍니다.
        navigationController?.pushViewController(dvc, animated: true)
    }
    @IBAction func unwindToMain(_ segue: UIStoryboardSegue) {
        
    }
    
}

