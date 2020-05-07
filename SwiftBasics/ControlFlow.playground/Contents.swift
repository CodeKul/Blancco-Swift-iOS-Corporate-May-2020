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


i = 0

while i < 10 {
    if i == 5 {
        i += 1
        continue
    }
    print("Codekul")
    i += 1
}
