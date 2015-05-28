// Playground - Inheritance

class Player {
    // properties 
    var name : String
    var score : Int
    // methods
    func description() -> String {
        return("Player \(name) has a score of \(score)")
    }
    // init
    init() {
        self.name = "John Doe"
        self.score = 0
    }
    // init with parameter
    init(name : String) {
        self.name = name
        self.score = 500
    }
}

var jake = Player()
println(jake.description())



