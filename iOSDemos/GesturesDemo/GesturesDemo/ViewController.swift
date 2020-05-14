//
//  ViewController.swift
//  GesturesDemo
//
//  Created by Apple on 14/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var greenView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(viewPinched))
        greenView.addGestureRecognizer(pinchGesture)

    }

    @objc func viewPinched(_ sender: UIPinchGestureRecognizer) {
        print("view Pinched")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesBegan")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesMoved")
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesEnded")
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touchesCancelled")
    }
    
    @IBAction func viewTapped(_ sender: UITapGestureRecognizer) {
        print("View is tapped")
    }
    
    @IBAction func viewSwipped(_ sender: UISwipeGestureRecognizer) {
        print("View is swipped")
    }

    @IBAction func viewLongPress(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .ended {
            print("long press ended")
        }
        else {
            print("View is long pressed")
        }
    }
}



