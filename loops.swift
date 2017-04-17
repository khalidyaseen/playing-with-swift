
//for in loop with arrays

let names = ["Anna", "Alex", "Brian", "Jack"]
for name in names {
    print("Hello, \(name)!")
}

print("***************************************************************************")
//using for in with dictionary

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}

print("***************************************************************************")
// for loop with ranged values

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}
print("***************************************************************************")
// we can use underscore too instead of a value
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}

print("\(base) to the power of \(power) is \(answer)")
print("***************************************************************************")

// using range in precise way
let minutes = 60
for tickMark in 0..<minutes {
    print(tickMark,terminator:" ")
}
print("***************************************************************************")



//stride(from:to:by:)
let minuteInterval = 5
for abc in stride(from: 0, to: minutes, by: minuteInterval) {
	print(abc, terminator:" ")  
}

print("***************************************************************************")
//stride(from:through:by:)

let hours = 12
let hourInterval = 3
for cdf in stride(from: 3, through: minutes, by: hourInterval) {
    print(cdf,terminator :" ")
}
