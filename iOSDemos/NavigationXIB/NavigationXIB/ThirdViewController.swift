//
//  ThirdViewController.swift
//  NavigationXIB
//
//  Created by Apple on 14/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func backToRootVC(_ sender: UIButton) {
        
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func nextButtonClick(_ sender: UIButton) {
        let fvc = FourthViewController(nibName: "FourthViewController", bundle: nil)
        self.navigationController?.pushViewController(fvc, animated: true)
    }
}
