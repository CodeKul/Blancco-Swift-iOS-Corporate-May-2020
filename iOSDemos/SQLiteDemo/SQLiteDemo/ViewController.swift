//
//  ViewController.swift
//  SQLiteDemo
//
//  Created by Apple on 15/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var rollnoTxt: UITextField!
    @IBOutlet var nameTxt: UITextField!
    @IBOutlet var marksTxt: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func insertData(_ sender: UIButton) {
        let query = "INSERT INTO Student VALUES (\(Int(rollnoTxt.text!) ?? 0), '\(nameTxt.text ?? "")', \(Int(marksTxt.text!) ?? 0))"
        print("SQL query: \(query)")
        let flg = DatabaseHandler.instance.executeQuery(query)
        if flg {
            print("Data saved")
        }
        else {
            print("Error while saving data")
        }
    }
    
    @IBAction func updateData(_ sender: UIButton) {
        let query = "UPDATE Student SET name='\(nameTxt.text!)', marks=\(marksTxt.text!) WHERE roll_no=\(rollnoTxt.text!)"
        print("SQL query: \(query)")
        let flg = DatabaseHandler.instance.executeQuery(query)
        if flg {
            print("Data Updated")
        }
        else {
            print("Error while saving data")
        }
    }

    
    @IBAction func showData(_ sender: UIButton) {
        let query = "SELECT * FROM Student"
        let data = DatabaseHandler.instance.selectQuery(query)
        print(data)
    }
}

