//
//  ViewController.swift
//  AutoLayoutDemo4
//
//  Created by Apple on 13/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var leftContraint: NSLayoutConstraint!
    @IBOutlet var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.translatesAutoresizingMaskIntoConstraints = false
        let const1 = NSLayoutConstraint(item: button!, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 20)
        
        let const2 = NSLayoutConstraint(item: button!, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1, constant: 0)
        self.view.addConstraints([const1, const2])
    }

    @IBAction func menuButtonClick(_ sender: UIButton) {
        if leftContraint.constant == 0 {
            leftContraint.constant = -200
        }
        else {
            leftContraint.constant = 0
        }

        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
        }
    }
}

