//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Apple on 18/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    override func viewDidLoad() {
        super.viewDidLoad()

//        Save the data
//        let stu = NSEntityDescription.insertNewObject(forEntityName: "Student", into: appDelegate.persistentContainer.viewContext) as! Student
//        stu.name = "XYZ"
//        stu.rno = 2
//        stu.marks = 100.0
//
//        appDelegate.saveContext()
        
        var students: [Student] = []
//        let fetchReq = NSFetchRequest<Student>(entityName: "Student")
        let fetchReq = appDelegate.persistentContainer.managedObjectModel.fetchRequestTemplate(forName: "FetchRoll1")!
//        fetchReq.predicate = NSPredicate(format: "rno == %d", 3)
        do {
            students = try appDelegate.persistentContainer.viewContext.fetch(fetchReq) as! [Student]
        }
        catch {
            print(error)
        }

        for stu in students {
            print("Name: \(stu.name ?? "")")
            print("Roll no: \(stu.rno)")
            print("Marks: \(stu.marks)")
        }
    }


}
