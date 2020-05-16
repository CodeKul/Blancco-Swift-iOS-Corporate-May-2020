//
//  ViewController.swift
//  PListDemo
//
//  Created by Apple on 15/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let filePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! + "/myfile.plist"
        
        print(filePath)
        
//        let dict = NSDictionary(dictionary: ["name": "Rahul", "city": "Pune", "phone": "1234567890"])
//        dict.write(toFile: filePath, atomically: true)
  
//        let arr = NSArray(array: ["Red", "Green", "Blue", "Gray", "White", "Black"])
//        arr.write(toFile: filePath, atomically: true)
        
//        let data = NSArray(contentsOfFile: filePath)
        
        let data = NSDictionary(contentsOfFile: filePath)
        print(data)

    }


}

