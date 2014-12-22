// Playground - Creating Type Properties and Type Methods

class BankAccount {
    
    // stored properties
    let accountNumber : Int
    let routingCode = 12345678
    var balance : Double
    var interestRate : Float = 2.0
    
    init(num : Int, initialBalance : Double) {
        self.accountNumber = num
        self.balance = initialBalance
    }
    
    func deposit(amount : Double) {
        balance += amount
    }
    func withdraw(amount : Double) -> Bool {
        if balance > amount {
            balance -= amount
            return true
        } else {
            println("Insufficient funds")
            return false
        }
    }
    // etc..
}

var firstAccount = BankAccount(num: 11221122,initialBalance: 1000.0)
var secondAccount = BankAccount(num: 22113322, initialBalance: 4543.54)

