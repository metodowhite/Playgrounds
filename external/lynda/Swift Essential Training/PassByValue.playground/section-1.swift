// Playground - Pass By Value





// function that changes an Int
func changeValue(var number : Int) -> Int {
    number += 1000
    return number
}
// define an Int variable (value type)
var myNumber = 99

// pass into the function - Pass By Value
changeValue(myNumber)

// original variable is unchanged
myNumber