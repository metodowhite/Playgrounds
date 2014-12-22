// Playground - Properties
import Foundation

class Person {
    
    // properties
    var firstName : String
    var lastName : String

    init(first : String, last : String) {
        self.firstName = first
        self.lastName = last
    }
}

var examplePerson = Person(first: "Jen", last: "Barber")
