//
//  ViewController.swift
//  homework_2nd_psh
//
//  Created by 박소현 on 2018. 10. 23..
//  Copyright © 2018년 박소현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var button_0: UIButton!
    @IBOutlet var button_1: UIButton!
    @IBOutlet var button_2: UIButton!
    @IBOutlet var button_3: UIButton!
    @IBOutlet var button_4: UIButton!
    @IBOutlet var button_5: UIButton!
    @IBOutlet var button_6: UIButton!
    @IBOutlet var button_7: UIButton!
    @IBOutlet var button_8: UIButton!
    @IBOutlet var button_9: UIButton!
    @IBOutlet var button_AC: UIButton!
    @IBOutlet var button_result: UIButton!
    @IBOutlet var button_plus: UIButton!
    @IBOutlet var button_minus: UIButton!
    @IBOutlet var button_mult: UIButton!
    @IBOutlet var button_div: UIButton!
    @IBOutlet var resultView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.layoutIfNeeded()
        button_0.layer.cornerRadius = 0.5 * button_0.bounds.size.width
        button_1.layer.cornerRadius = 0.5 * button_1.bounds.size.width
        button_2.layer.cornerRadius = 0.5 * button_2.bounds.size.width
        button_3.layer.cornerRadius = 0.5 * button_3.bounds.size.width
        button_4.layer.cornerRadius = 0.5 * button_4.bounds.size.width
        button_5.layer.cornerRadius = 0.5 * button_5.bounds.size.width
        button_6.layer.cornerRadius = 0.5 * button_6.bounds.size.width
        button_7.layer.cornerRadius = 0.5 * button_7.bounds.size.width
        button_8.layer.cornerRadius = 0.5 * button_8.bounds.size.width
        button_9.layer.cornerRadius = 0.5 * button_9.bounds.size.width
        button_AC.layer.cornerRadius = 0.5 * button_AC.bounds.size.width
        button_result.layer.cornerRadius = 0.5 * button_result.bounds.size.width
        button_plus.layer.cornerRadius = 0.5 * button_plus.bounds.size.width
        button_minus.layer.cornerRadius = 0.5 * button_minus.bounds.size.width
        button_mult.layer.cornerRadius = 0.5 * button_mult.bounds.size.width
        button_div.layer.cornerRadius = 0.5 * button_div.bounds.size.width
        
    

        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func button_7_click(_ sender: Any) {
        resultView.text =  "\(7)"
    }
    
}

