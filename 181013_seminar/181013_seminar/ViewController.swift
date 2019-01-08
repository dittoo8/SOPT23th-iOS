//
//  ViewController.swift
//  181013_seminar
//
//  Created by 박소현 on 2018. 10. 13..
//  Copyright © 2018년 박소현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var progressView: UIProgressView!
    @IBOutlet var boxView: UIView!
    @IBOutlet var purpleView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        boxView.isHidden = true
    }
    
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            purpleView.isHidden = false
        } else {
            purpleView.isHidden = true
        }
    }
    @IBAction func sliderAction(_ sender: UISlider) {
        let data = sender.value
        textField.text = "\(data)"
    }
    @IBAction func switchAction(_ sender: UISwitch) {
        boxView.isHidden = !sender.isOn
    }
    @IBAction func stepperAction(_ sender: UIStepper) {
        
        progressView.progress = Float(sender.value)
    }
}

