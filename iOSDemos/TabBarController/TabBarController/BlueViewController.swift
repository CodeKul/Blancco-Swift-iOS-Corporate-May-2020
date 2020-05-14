//
//  BlueViewController.swift
//  TabBarController
//
//  Created by Apple on 14/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func nextButtonClick(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "orangeViewController")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
