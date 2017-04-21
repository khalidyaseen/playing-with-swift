// CApturing values


func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)


var val = incrementByTen()
print(val)
// returns a value of 10
val = incrementByTen()
print(val)
// returns a value of 20
val = incrementByTen()
print(val)
// returns a value of 30

let incrementBySeven = makeIncrementer(forIncrement: 7)
var xyz = incrementBySeven()
// returns a value of 7
print(xyz)


val = incrementByTen()
// returns a value of 40
print(val)
//Closures Are Reference Types

let alsoIncrementByTen = incrementByTen
val = alsoIncrementByTen()