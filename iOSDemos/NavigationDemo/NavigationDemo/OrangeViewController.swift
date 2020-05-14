//
//  OrangeViewController.swift
//  NavigationDemo
//
//  Created by Apple on 14/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class OrangeViewController: UIViewController {

    var strData: String?
    
    @IBOutlet var lable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lable.text = strData
        print("viewDidLoad")
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
