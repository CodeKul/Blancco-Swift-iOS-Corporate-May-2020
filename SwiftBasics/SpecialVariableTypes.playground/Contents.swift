import UIKit

// Any

var a: Any = 10
print(a)
a = 20.30
print(a)
a = "Codekul"
print(a)
a = true
print(a)

var arr: [Any] = [1, "Two", 3.4, true]
var ele = arr[1]
print(ele)



// Optionals

var opt1: Int?
//opt1 = 10

//if opt1 == nil {
//    opt1 = 0
//}

print(opt1 ?? "100")


a = 10.20
var b: Any = 20.30

var opt_a = a as? Int
var opt_b = b as? Int

var c =  (opt_a ?? 300) + (opt_b ?? 400)
print(c)


// Asserts

var opt2: Int?
opt2 = 22
assert(opt2 != 20, "Opt2 is having 20 value!")

print("Codekul...")


// Type alias

typealias name = String

var n1: name = "Codekul"
print(n1)

typealias marks = Double
var m1: marks = 10.20

m1 = 34.09
    
print(m1)

var m2: Double = 34.65
print(m2)
