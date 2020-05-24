import UIKit

class A {
    var a: Int
    
    init(a: Int) {
        self.a = a
    }
}

extension A: protocolC {
    
    func changeA(a: Int) {
        self.a = a
        print("value changed to \(a)")
    }
    
    //    func setZero() {
    //        self.a = 0
    //        print("value changed to zero")
    //    }
    
}

class B {
    var delegate: protocolC?
    
    func setValue(a: Int?) {
        if let a1 = a {
            delegate?.changeA(a: a1)
        }
        else {
            delegate?.setZero?()
        }
    }
    
}

@objc protocol protocolC {
    
    func changeA(a: Int)
    @objc optional func setZero()
}

//extension Int: protocolC {
//
//    mutating func changeA(a: Int) {
//        print("value changed to \(a)")
//    }
//
//}

class MyVC: UIViewController {
    
}


extension MyVC: protocolC {
    func changeA(a: Int) {
        print("value changed to \(a)")
    }
}

var objA = A(a: 100)
var objB = B()

objB.delegate = objA

//objB.delegate.a

objB.setValue(a: nil)


extension String {
    mutating func appendCodekul() {
        self += "Codekul"
    }
}


var str = "iOS Swift-"
str.appendCodekul()
print(str)



var str1 = "Codekul"

var str2 = str1

str2 += "Swift"

print(str1)
print(str2)


