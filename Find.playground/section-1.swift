// Playground - noun: a place where people can play

import UIKit

let leArray = [12, 45, 66, 879, 42, 23, 678, 345]

find(leArray, 879)


//https://developer.apple.com/library/mac/documentation/General/Reference/SwiftStandardLibraryReference/Equatable.html
//http://nshipster.com/swift-default-protocol-implementations/

struct Person: Equatable {
    let name: String
    let age: Int
}

func ==(lhs: Person, rhs: Person) -> Bool {
    return lhs.name == rhs.name && lhs.age == rhs.age
}

let person1 = Person(name: "Bla", age: 27)
let person2 = Person(name: "le blu", age: 33)
let person3 = Person(name: "Javo", age: 76)

let personArray = [person1, person2, person3]

find(personArray, person2)
