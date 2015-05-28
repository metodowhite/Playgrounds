//: Playground - noun: a place where people can play

import UIKit

// Utils:
func delay(delay:Double, closure:()->()) {
	dispatch_after(
		dispatch_time(
			DISPATCH_TIME_NOW,
			Int64(delay * Double(NSEC_PER_SEC))
		),
		dispatch_get_main_queue(), closure)
}

delay(5, { () -> () in
	println("YEI")
})

//func ohMyLong(onCompletion: ()->()) {
//	//work & then completion:
//}
//
//func naiNoNai() {
////	ohMyLong({ () -> () in
////		println("hello after X")
////	})
//	ohMyLong { () -> () in
//		println("callback")
//	}
//}
//
//naiNoNai()

//: [Callback Functions](http://codereview.stackexchange.com/questions/87016/swift-ios-call-back-functions)


struct Connector {
	
	typealias ServiceUserResponse = (users: [String]) -> ()
	typealias NumberOfUsers = Int
	
	func getUsers(count: NumberOfUsers, onCompletion: ServiceUserResponse) {
		for i in 1...100 {
			if i == 77 {
				onCompletion(users: ["Bla", "Ble", "Bli", "Blo"])
			}
		}
	}
}

class MyClass {
	func setup() {
		let conn = Connector()
		conn.getUsers(50, onCompletion: { (users) -> () in
			let resultado = users.description
			resultado
		})
	}
}

let test = MyClass()
test.setup()



//: ![Trying to talk technical](http://tclhost.com/CLdXjev.gif)
