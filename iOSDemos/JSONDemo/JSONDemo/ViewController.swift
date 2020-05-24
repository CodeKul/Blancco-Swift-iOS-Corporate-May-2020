//
//  ViewController.swift
//  JSONDemo
//
//  Created by Apple on 19/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let session = URLSession.shared
        let url =  URL(string: "https://reqres.in/api/users?page=0")
//        print(url?.relativePath)
        let req = URLRequest(url: url!)
        
        let task = session.dataTask(with: req) { (data, response, error) in
            let res = response as! HTTPURLResponse
            if res.statusCode == 200 {
                do {
                    let result = try JSONSerialization.jsonObject(with: data!, options: []) as! [String: Any]
//                    print(result)
                    let users = result["data"] as! [[String: Any]]
//                    print(users)
                }
                catch {
                    print(error)
                }
            }
//            print(data)
//            print(response)
//            print(error)
        }
        task.resume()
        
        
        var postReq = URLRequest(url: URL(string: "https://reqres.in/api/users")!)
        postReq.httpMethod = "POST"
        postReq.addValue("application/json", forHTTPHeaderField: "Content-Type")
        postReq.httpBody = try! JSONSerialization.data(withJSONObject: ["name": "morpheus","job": "leader"], options: [])
        
        let postTask = session.dataTask(with: postReq) { (data, response, error) in
            
            if data != nil {
                do {
                    let result = try JSONDecoder().decode(UserDecodable.self, from: data!)
                    print(result.name)
                    print(result.job)
                    print(result.id)
                    print(result.createdAt)
                }
                catch {
                    print(error)
                }
            }
        }
        postTask.resume()
    }
}

