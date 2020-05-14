//
//  SecondViewController.swift
//  NavigationXIB
//
//  Created by Apple on 14/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func nextButtonCLicked(_ sender: UIButton) {
        let tVC = ThirdViewController(nibName: "ThirdViewController", bundle: nil)
        self.navigationController?.pushViewController(tVC, animated: true)
    }
}
