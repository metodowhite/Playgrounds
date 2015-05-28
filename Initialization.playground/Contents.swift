/*:

## Initialization 
[official documentation](https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Initialization.html#//apple_ref/doc/uid/TP40014097-CH18-ID203)

**What can you do inside an init?**

- You can set any property’s value, even those with default values
- Constant properties (i.e. properties declared with let) can be set
- You can call other init methods in your own class using self.init(<args>) In a class, you can of course also call super.init(<args>)

**What are you required to do inside init?**

- By the time any init is done, all properties must have values (optionals can have the value nil)
- There are two types of inits in a class, convenience and designated (i.e. not convenience)
- A designated init must (and can only) call a designated init that is in its immediate superclass
- You must initialize all properties introduced by your class before calling a superclass’s init
- You must call a superclass’s init before you assign a value to an inherited property
- A convenience init must (and can only) call a designated init in its own class
- A convenience init may call a designated init indirectly (through another convenience init)
- A convenience init must call a designated init before it can set any property values
- The calling of other inits must be complete before you can access properties or invoke methods

**Inheriting init**

- If you do not implement any designated inits, you’ll inherit all of your superclass’s designateds
- If you override all of your superclass’s designated inits, you’ll inherit all its convenience inits
- If you implement no inits, you’ll inherit all of your superclass’s inits

**Required init**

- A class can mark one or more of its init methods as required
- Any subclass must implement said init methods (though they can be inherited per above rules)

*/

import UIKit

class EIDataManager {
	var dataIdentifier: String = "FOO"
}

class EIManagedList: EIDataManager {
	
	convenience init(dataIdentifier: String) {
		self.init()
		self.dataIdentifier = dataIdentifier
	}
}


let test = EIManagedList(dataIdentifier: "dataList")



//class Vehicle {
//	var currentSpeed = 0.0
//	var description: String {
//		return "traveling at \(currentSpeed) miles per hour"
//	}
//	func makeNoise() {
//		// do nothing - an arbitrary vehicle doesn't necessarily make a noise
//	}
//}
//
//
//class Car: Vehicle {
//	var gear = 1
//	override var description: String {
//		return super.description + " in gear \(gear)"
//	}
//}
