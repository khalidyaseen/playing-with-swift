//printing console text
import Glibc

let stream = fopen("Sources/main.swift", "r")

var input = ""
var arr = [String]()
while true {
    let c = fgetc(stream)
    if c == -1 {
        break
    }
    input = String(Character(UnicodeScalar(UInt32(c))!))
	 arr = input.characters.map{String($0)}
    print(input, terminator:"")

}
for i in arr {
	print(i)
}