//
//  DetailedViewController.swift
//  SplitViewControllerDemo
//
//  Created by Apple on 19/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController, DetailedViewControllerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func changeBackgroundColor(color: UIColor) {
        self.view.backgroundColor = color
    }
}

protocol DetailedViewControllerDelegate {
    func changeBackgroundColor(color: UIColor)
}
