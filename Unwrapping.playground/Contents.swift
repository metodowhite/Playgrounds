//: Optional definition

/*
enum Optional<T> {
case None
case Some(T)
}

class BusinessClass {
var foo: String?

func testFoo() {

if foo == .None {
println("None")
} else {
println(foo)
}
}
}

let testBClass = BusinessClass()
testBClass.foo = "Hello"
testBClass.testFoo()
*/

//: Unwrapping
/*
class BusinessClass {
var foo: String?

func testFoo() {
if let bla = foo {
println(bla)
}
}
}

let testBClass = BusinessClass()
testBClass.foo = "Hello"
testBClass.testFoo()
*/


//: Nil Coalescing operator
/*
class BusinessClass {
	var foo: String?
	
	func testFoo() -> String{
		let bla = foo ?? "None"
		return bla
	}
}

let testBClass = BusinessClass()
testBClass.foo = "Hello"
testBClass.testFoo()
*/

//: Explicit unwrapping
/*
class BusinessClass {
var foo: String!

func testFoo() {
println(foo)
}
}

let testBClass = BusinessClass()
testBClass.testFoo()
*/

//: Optional Chaining – [documentation](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/OptionalChaining.html)

class Person {
	var residence: Residence?
}

class Residence {
	var numberOfRooms = 1
}

let john = Person()
let roomCount = john.residence?.numberOfRooms

//let roomCount = john.residence!.numberOfRooms // this triggers a runtime error

//: Improved Optional Binding

let myNumberString = "10".toInt()
let myNumberStringNil = "77".toInt()

//func userMyNumbersStrings() {
//	//OLD
//	if let bla = myNumberString {
//		if let ble = myNumberStringNil {
//			println("\(bla, ble)")
//		}
//	}
//	//1.2
//	if let bla = myNumberString, ble = myNumberStringNil {
//		println("\(bla, ble)")
//	}
//}
//
//userMyNumbersStrings()

func userMyNumbersStrings() {
	//1.2	
	if let bla = myNumberString, ble = myNumberStringNil {
		println("\(bla, ble)")
	}
}

userMyNumbersStrings()






