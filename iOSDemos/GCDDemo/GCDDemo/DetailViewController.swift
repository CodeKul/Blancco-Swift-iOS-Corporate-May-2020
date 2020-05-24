//
//  DetailViewController.swift
//  GCDDemo
//
//  Created by Apple on 22/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.startAnimating()
        
        let queue1 = DispatchQueue(label: "queue1", qos: DispatchQoS(qosClass: .background, relativePriority: 0), attributes: .concurrent, autoreleaseFrequency: .inherit, target: nil)
        
        let queue2 = DispatchQueue(label: "queue2")
                
        queue1.async {
            sleep(2)
            print(queue1.label)
        }

        queue2.async {
            sleep(1)
            print(queue2.label)
        }
        
        print("Before starting bg thread")
        DispatchQueue.global().async {
            print("Started bg thread")
            let imageData = try! Data(contentsOf: URL(string: "https://www.slashgear.com/wp-content/uploads/2019/07/Iron-Man-VR-flying.jpg")!)
            let image = UIImage(data: imageData)
            print("Done with download")
            DispatchQueue.main.sync {
                print("started main thread")
                self.imageView.image = image
                self.activityIndicator.stopAnimating()
                print("end of main thread")
            }
            print("End of bg thread")
        }
        print("End of view did load")
    }
}
