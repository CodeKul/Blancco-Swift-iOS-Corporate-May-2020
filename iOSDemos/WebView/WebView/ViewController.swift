//
//  ViewController.swift
//  WebView
//
//  Created by Apple on 12/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var webView: WKWebView!
    @IBOutlet var txt: UITextField!
    @IBOutlet var progressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        webView.addObserver(self, forKeyPath: "estimatedProgress", options: .new, context: nil)
    }

    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            if webView.estimatedProgress == 1 {
                progressView.isHidden = true
            }
            else {
                progressView.isHidden = false
                progressView.progress = Float(webView.estimatedProgress)
                txt.text = webView.url?.absoluteString
            }
        }
    }
    
    @IBAction func goButtonClicked(_ sender: UIButton) {
        txt.resignFirstResponder()
        let url = URL(string: txt.text ?? "https://www.google.com")
        let req = URLRequest(url: url!)
        webView.load(req)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txt.resignFirstResponder()
    }
    
}

