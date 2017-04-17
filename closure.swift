//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [8999, 50006464658, 555510]


let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
		print(output)
    } while number > 0	
return output

}

print(strings)



// closure example 1
let cast = ["YASEEN", "KHALID", "KIM", "KARL"]
let lowercaseNames = cast.map { $0.lowercased()}
let letterCounts = cast.map { $0.characters.count }

print("\(lowercaseNames)")
print("\(letterCounts)")

//closure example 
let padawans = ["Knox", "Avitla", "Mennaus"]
let xyz = padawans.map({
  //(padawan: String) -> String in
  "\($0) has been trained!"
})

print(xyz)
