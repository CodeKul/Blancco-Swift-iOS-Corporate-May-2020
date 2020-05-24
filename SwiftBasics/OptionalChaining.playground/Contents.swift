import UIKit

class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}


let john = Person()

john.residence = Residence()

//let roomCount = john.residence?.numberOfRooms

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
