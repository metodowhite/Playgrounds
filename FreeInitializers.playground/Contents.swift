struct AlexanderStruct {
	var age: Int //not optional, notice the abscence of warnings or errors
	let width: Float
}

let testStructFreeInit = AlexanderStruct(age: 12, width: 23.5)



class ClassKent {
	var age: Int?
	let width: Float = 23.5 //not using inference type for demo purposes
}

let testClassKent = ClassKent()


class ClassKent2 {
	var age: Int?
	let width: Float
	
	init(lewidth: Float) {
		self.width = lewidth
	}
}

let testClassKent2 = ClassKent2(lewidth: 23.7)


