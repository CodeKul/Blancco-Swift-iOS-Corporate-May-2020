import UIKit

class Circle {
    // stored property
    var radius: Double = 0 {
        willSet {
           print("New: \(newValue)\nRadius: \(radius)")
        }
        didSet {
            print("Old: \(oldValue)\nRadius: \(radius)")
        }
    }
    
    // Computed property
    var area: Double {
        get {
            return radius * radius * Double.pi
        }
        set(newValue) {
            radius = sqrt(newValue/Double.pi)
        }
    }
}


var c1 = Circle()
c1.radius = 10

print("Area: \(c1.area)")

c1.area = 100

print("Radius: \(c1.radius)")
