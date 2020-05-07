import UIKit

// Arithmetic

/*
    +
    -
    *
    /
    %
 */

var a = 10.4
var b = 20.24

var c = a + b
c = a - b
c = a * b
c = a / b
//c = a % b



var str1 = "Codekul"
var str2 = " - The Gurukul for Coders!"

var str3 = str1 + str2

// Assignment
/*
    =
 */

var d = 100
//d = 100.0
d = 10 + 20
//d = b

// Compound Assignment
/*
    +=
    -=
    *=
    /=
    %=
 */

c += a  // c = c + a
c -= b
c = 20 / 40
print("Result: \(c)")


// Comparision

/*
    ==
    !=
    <
    >
    <=
    >=
 */

a = 10.0
b = 10.0

var e = a < b
e = a == b
print(e)


// Logical

/*
    &&
    ||
    !
 
    p   q   &&  ||  !p
    0   0   0   0   1
    0   1   0   1   1
    1   0   0   1   0
    1   1   1   1   0
 */

e = a == b && a == 10   // 1 && 1

e = (b == 20 && b < a) || (a < 20)
print(e)

// Ternary

var f = !(a < b) ? 100: 200
print(f)


// Incr/Decr
/*
    ++ / NA
    -- / NA
 
    += 1
    -= 1
 */
