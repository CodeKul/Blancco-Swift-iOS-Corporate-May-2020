import UIKit

class MyClass {
    
    var a : Int
    init(a: Int = 100) {
        print("init is called...")
        self.a = a
    }
    func my_fuct() {
        print("Value of a: \(a)")
    }
}

var obj = MyClass()
print(obj.a)
var myObj = MyClass(a: 10)
myObj.a = 20
print(myObj.a)

myObj.my_fuct()

class Car {
    var curr_speed: Int
    var color: String
    var model: String
    var make: String
    
    init(curr_speed: Int, color: String, model: String, make:String) {
        self.curr_speed = curr_speed
        self.color = color
        self.model = model
        self.make = make
    }
    
    func forward() {
        print("Car moving forward")
    }
    
    func backward() {
        print("Car moving backward")
    }

    func start() {
        print("Car starting")
    }

    func turining_off() {
        print("Car turining off")
    }
}

class SportsCar: Car {
    
    var nitro_cap : Int
    
    override init(curr_speed: Int, color: String, model: String, make: String, nitro_cap: Int) {
        super.init(curr_speed: curr_speed, color: color, model: model, make: make)
        self.nitro_cap = nitro_cap
    }
    override func start() {
        print("Sport car is starting")
    }
    
    func speed_boost() {
        print("Car is in speed boost")
    }
}

var spcar = SportsCar(curr_speed: 0, color: "Red", model: "R8", make: "Audi", nitro_cap: 10)
spcar.forward()
spcar.speed_boost()
spcar.start()


public class SomePublicClass {                  // explicitly public class
    public var somePublicProperty = 0            // explicitly public class member
    var someInternalProperty = 0                 // implicitly internal class member
    fileprivate func someFilePrivateMethod() {}  // explicitly file-private class member
    private func somePrivateMethod() {}          // explicitly private class member
}

class SomeInternalClass {                       // implicitly internal class
    var someInternalProperty = 0                 // implicitly internal class member
    fileprivate func someFilePrivateMethod() {}  // explicitly file-private class member
    private func somePrivateMethod() {}          // explicitly private class member
}

fileprivate class SomeFilePrivateClass {        // explicitly file-private class
    func someFilePrivateMethod() {}              // implicitly file-private class member
    private func somePrivateMethod() {}          // explicitly private class member
}

private class SomePrivateClass {                // explicitly private class
    func somePrivateMethod() {}                  // implicitly private class member
}
