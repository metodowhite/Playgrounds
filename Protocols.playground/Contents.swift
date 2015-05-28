

protocol CustomModalDelegate {
	func dismiss() -> ()
}

class CustomModal {
	var delegate: CustomModalDelegate?
	
	func onClosedButtonPressed() {
		delegate!.dismiss()
	}
	
	func test() {
		delegate!.dismiss()
	}
}

class AnyModal: CustomModalDelegate {
	
	let customModal = CustomModal()
	
	init() {
		customModal.delegate = self
		customModal.test()
	}
	
	func dismiss() {
		println("😀")
	}
}


let myModal = AnyModal()
