import UIKit

// if else
/*
    if condition {
        true statements
    }
    else {
        false statements
    }
 */

var a = 30
var b = 20

if a < b {
    print("a is less than b")
}
else if a == b {
    print("a and b both are equal")
}
else {
    print("a is greater than b")
}

if a < b {
    print("a is less than b")
}
else {
    if a == b {
        print("a and b both are equal")
    }
    else {
        print("a is greater than b")
    }
}

// Loops

var i = 0
while i < 10 {
    print(i)
    if i % 2 == 0 {
        print("Codekul")
    }
    else {
        print("The Gurukul for Coders!")
    }
    i += 1
}

i = 100
repeat {
    print("Codekul")
    i += 1
}while i < 10


var arr = [1,2,3,4,5,6,7,8,9]
var sum = 0
for (index, element) in arr.enumerated() {
    print("Index: \(index), Element: \(element)")
    sum += element
}
print(sum)

for n in arr.reversed() {
    print(n)
}

// switch case
var opt = 1

switch opt {
case 1:
    print("One")
    fallthrough
case 2:
    print("Two")
    fallthrough
case 3:
    print("Three")
case 4:
    print("Four")
default:
    print("Zero")
}

var opt1 = 10.5
switch opt1 {
case 10.1:
    print(0.1)
case 10.2:
    print(0.2)
case 10.3:
    print(0.3)
case 10.4:
    print(0.4)
case 10.5:
    print(0.5)
default:
    print(0)
}

opt = 0
switch opt {
case 0:
    print("No value")
case 1..<5:
    print("between 1-5")
case 5..<10:
    print("between 5-10")
case 10..<20:
    print("between 10-20")
default:
    print("not in range")
}

let somePoint = (0, 1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

let anotherPoint = (2, 1)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

let yetAnotherPoint = (2, 1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}


i = 0

while i < 10 {
    if i == 5 {
        i += 1
        continue
    }
    print("Codekul")
    i += 1
}
