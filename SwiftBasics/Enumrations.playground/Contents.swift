import UIKit

enum CompassPoint: Int {
    case north
    case south
    case east
    case west
}

var direction = CompassPoint.east

direction = .north

switch direction {
case .east:
    print("East")
case .north:
    print("North")
case .south:
    print("South")
case .west:
    print("West")
}

enum ASCIIChars: Character {
    case tab = "\t"
    case newLine = "\n"
    case carriageReturn = "\r"
}

print("After this-\(ASCIIChars.carriageReturn.rawValue)-0000")

