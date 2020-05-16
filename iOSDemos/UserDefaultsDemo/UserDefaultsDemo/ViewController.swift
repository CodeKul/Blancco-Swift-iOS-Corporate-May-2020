//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by Apple on 15/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userTxt: UITextField!
    @IBOutlet var passTxt: UITextField!
    @IBOutlet var isLoggedinSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let username = UserDefaults.standard.value(forKey: "username") as? String
        let password = UserDefaults.standard.value(forKey: "password") as? String
        if username == "user" && password == "pass" {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController")
            self.navigationController?.pushViewController(vc, animated: false)
        }
    }

    @IBAction func loginButtonCLick(_ sender: UIButton) {
        if userTxt.text == "user" && passTxt.text == "pass" {
            if isLoggedinSwitch.isOn {
                UserDefaults.standard.set(userTxt.text, forKey: "username")
                UserDefaults.standard.set(passTxt.text, forKey: "password")
                UserDefaults.standard.synchronize()
            }
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "HomeViewController")
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }

}

