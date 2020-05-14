//
//  FourthViewController.swift
//  NavigationXIB
//
//  Created by Apple on 14/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToSVC(_ sender: UIButton) {
//        let vc = self.navigationController?.viewControllers[1]
        
        for vc in self.navigationController!.viewControllers {
            if vc.isKind(of: SecondViewController.self)  {
                self.navigationController?.popToViewController(vc, animated: true)
            }
        }
    }
}
