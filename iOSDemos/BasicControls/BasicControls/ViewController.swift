//
//  ViewController.swift
//  BasicControls
//
//  Created by Apple on 11/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet var myLable: UILabel!
    @IBOutlet var myTxt: UITextField!
    var myLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel = UILabel(frame: CGRect(x: 20, y: 20, width: 280, height: 40))
        myLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        myLabel?.textAlignment = .center
        myLabel?.font = UIFont.systemFont(ofSize: 30)
        self.view.addSubview(myLabel!)
    }

    @IBAction func okay_button_tap(_ sender: UIButton) {
        myLabel?.text = myTxt.text
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        myLabel?.text = "\(Int(sender.value))"
    }
    
}

