// Playground - Pass By Reference 

class SimpleClass {
    var value : Int = 99
}

// Simple function that changes an object
func changeObject(var object : SimpleClass) -> Int {
    object.value += 1000
    return object.value
}
// create a new instance (reference type)
var myObject = SimpleClass()

// pass the object into the function - Pass By Reference
changeObject(myObject)

// the original object has been changed.
myObject.value