//
//  ViewController.swift
//  NavigationDemo
//
//  Created by Apple on 14/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "identifier1" {
            print("prepare for segue")
            let oVC = segue.destination as! OrangeViewController
//            oVC.lable.text = textField.text
            oVC.strData = textField.text
        }
    }
}

