//
//  ViewController.swift
//  NavigationXIB
//
//  Created by Apple on 14/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "ViewController"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: #selector(rightBarButtonCLick))
    }

    @objc func rightBarButtonCLick(_ sender: UIBarButtonItem) {
        let sVC = SecondViewController(nibName: "SecondViewController", bundle: nil)
        self.navigationController?.pushViewController(sVC, animated: true)
    }
}

