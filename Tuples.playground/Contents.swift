let http404Error = (404, "Not Found")

let error = http404Error
if error.0 == 404 {
	println(error.1)
}

// Struct initialization its perfectly fine, but more expensive
//
//struct Error {
//	let code: Int
//	let message: String
//}
//
//let http404ErrorStruct = Error(code: 404, message: "Not Found")

func testTupleReturn() -> (code: Int, message: String) {
	return http404Error
}

testTupleReturn().message


func testTupleReturn2(#errorCode: Int) -> (code: Int, message: String) {
	switch errorCode{
	case 404:
		return http404Error
	case 200:
		return (errorCode, "Cool")
	default:
		return (errorCode, "Not Cool")
	}
}

testTupleReturn2(errorCode: 200).message
testTupleReturn2(errorCode: 404).message
