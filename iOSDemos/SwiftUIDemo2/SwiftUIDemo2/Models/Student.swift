//
//  Student.swift
//  SwiftUIDemo2
//
//  Created by Apple on 24/05/20.
//  Copyright © 2020 Codekul. All rights reserved.
//

import Foundation

class Student {
    var name: String
    var rno: Int
    var marks: Double
    var imageUrl: String
    
    init(name: String, rno: Int, marks: Double, imageUrl: String) {
        self.name = name
        self.rno = rno
        self.marks = marks
        self.imageUrl = imageUrl
    }
    
    static func all() -> [Student] {
        return [
            Student(name: "ABC", rno: 1, marks: 98.45, imageUrl: "1"),
            Student(name: "XYZ", rno: 2, marks: 78.43, imageUrl: "2"),
            Student(name: "PQR", rno: 3, marks: 84.64, imageUrl: "3"),
            Student(name: "LMN", rno: 4, marks: 85.25, imageUrl: "4")
        ]
    }
}
