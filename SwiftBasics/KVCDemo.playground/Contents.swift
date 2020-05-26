import UIKit

class Student: NSObject {
    
    @objc dynamic var name: String
    @objc dynamic var rno: Int
    @objc dynamic var stu: Student?
    
    init(name: String, rno: Int, stu: Student?) {
        self.name = name
        self.rno = rno
        self.stu = stu
    }
    
    func display() {
        print("Name: \(self.name)")
        print("Roll no: \(self.rno)")
        self.stu?.display()
    }
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        if keyPath == "name" {
            print((object as! Student).name)
        }
        
    }
}


var s1 = Student(name: "ABC", rno: 1, stu: nil)

s1.setValue("XYZ", forKey: "name")

s1.display()

var s2 = Student(name: "PQR", rno: 2, stu: s1)

s2.setValue(3, forKeyPath: "stu.rno")   // s2.stu.rno = 3

s2.display()


s1.addObserver(s1, forKeyPath: "name", options: .new, context: nil)
s1.name = "LMN"

