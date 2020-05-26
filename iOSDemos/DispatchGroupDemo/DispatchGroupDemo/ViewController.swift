//
//  ViewController.swift
//  DispatchGroupDemo
//
//  Created by Apple on 26/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let dispatchGroup = DispatchGroup()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dispatchGroup.enter()
        downloadImage1()
        dispatchGroup.enter()
        downloadImage2()
        
        dispatchGroup.notify(queue: .main) {
            print("Both the images are downloaded...")
        }
        
    }

    func downloadImage1() {
        DispatchQueue.global().async {
            let url = URL(string: "https://assets1.ignimgs.com/2019/04/01/ironmanvr-blogroll-1554158268175.jpg")
            let data = try! Data(contentsOf: url!)
            print("data1")
            self.dispatchGroup.leave()
        }
    }
    
    func downloadImage2() {
        DispatchQueue.global().async {
            let url = URL(string: "https://venturebeat.com/wp-content/uploads/2018/09/ironman.jpg")
            let data = try! Data(contentsOf: url!)
            print("data2")
            self.dispatchGroup.leave()
        }
    }
}

