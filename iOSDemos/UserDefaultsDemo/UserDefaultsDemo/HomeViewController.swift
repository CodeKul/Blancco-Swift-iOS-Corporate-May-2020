//
//  HomeViewController.swift
//  UserDefaultsDemo
//
//  Created by Apple on 15/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func logoutButtonClick(_ sender: UIButton) {
        
        UserDefaults.standard.removeObject(forKey: "username")
        UserDefaults.standard.set(nil, forKey: "password")
        
        self.navigationController?.popViewController(animated: true)
    }
}
