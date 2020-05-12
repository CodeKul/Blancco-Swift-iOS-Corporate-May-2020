import UIKit

class Employee {
    var name: String
    var id: Int
    var salary: Double
    
    init(name: String, id: Int, salary: Double) {
        self.name = name
        self.id = id
        self.salary = salary
    }
    
    func increament() {
        self.salary += 100
    }

    func info() {
        print("Name: \(name)")
        print("Id: \(id)")
        print("Salary: \(salary)")
    }
}


class Developer: Employee {
    
    var desk_id: Int
    
    init(name: String, id: Int, salary: Double, desk_id: Int) {
        self.desk_id = desk_id
        super.init(name: name, id: id, salary: salary)
    }
    
    override func increament() {
        self.salary += 1000
    }
    
    override func info() {
        super.info()
        print("Desk_Id: \(desk_id)")
    }
}

//class Manager: Employee {
//
//    var cabin_id: Int
//
//    init(name: String, id: Int, salary: Double, cabin_id: Int) {
//        self.cabin_id = cabin_id
//        super.init(name: name, id: id, salary: salary)
//    }
//
//    func increament() {
//        self.salary += 3000
//    }
//
//    override func info() {
//        super.info()
//        print("Cabin_Id: \(cabin_id)")
//    }
//
//}


class Manager: Developer {
    
    var cabin_id: Int
    
    init(name: String, id: Int, salary: Double, cabin_id: Int, desk_id: Int) {
        self.cabin_id = cabin_id
        super.init(name: name, id: id, salary: salary, desk_id: desk_id)
    }
    
    override func increament() {
        super.increament()
//        self.salary += 3000
    }
    
    override func info() {
        super.info()
        print("Cabin_Id: \(cabin_id)")
    }
}



var dev1 = Developer(name: "ABC", id: 1, salary: 10000, desk_id: 101)
dev1.info()
dev1.increament()
dev1.info()


var man1 = Manager(name: "XYZ", id: 2, salary: 30000, cabin_id: 102, desk_id: 102)
man1.info()
man1.increament()
man1.info()
