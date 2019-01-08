//
//  ViewController.swift
//  181027_seminar
//
//  Created by 박소현 on 2018. 10. 27..
//  Copyright © 2018년 박소현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var partTextField: UITextField!
    @IBOutlet var partImage: UIImageView!
    
    var picker : UIPickerView!
    var toolbar : UIToolbar!
    let parts: [String] = ["기획","디자인","서버","안드로이드","iOS"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupPicker()
        setupToolbar()
    }

    func setupPicker(){
        picker = UIPickerView()
        picker.delegate = self
        picker.dataSource = self
        partTextField.inputView = picker
        
    }
    
    func setupToolbar(){
        toolbar = UIToolbar(frame : CGRect(x: 0, y: 0, width: view.frame.width, height: 40))
        let done = UIBarButtonItem(title: "done", style: .done, target: self, action: #selector(selectPart))
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        toolbar.setItems([space, done], animated: true)
        partTextField.inputAccessoryView = toolbar

    }
    
    @objc func selectPart(){
        let row = picker.selectedRow(inComponent: 0)
        let part = parts[row]
        partTextField.text = part
        switch part {
        case "기획":
            partImage.image = UIImage(named:"sopt_doplan")
        case "디자인":
            partImage.image = UIImage(named:"sopt_dodesign")
        case "서버" ,"안드로이드","iOS":
            partImage.image = UIImage(named:"sopt_dodevelop")
        default:
            break
        }
        partTextField.endEditing(true)
    }
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return parts[row]
    }
}

extension ViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return parts.count
    }
    
    
    
}
