class Mammals {
	var type : String = ""
	var livesFor: Int = 0
	var lifeSpan :String{
		return ("the life span of \(type) is \(livesFor)")
	}
}

class Humans : Mammals{
	var name: String 
	var Speak: Bool
	init(n: String , s: Bool){
		self.name = n
		self.Speak = s
	}
	func canSpeak(){
		if Speak == true {
			print("congratulations \(name) you can talk")
		}
		else {
			print("sorry you cant speak")
		}
	}
}

class Animals : Mammals{
	var legs: Int
	var Speak = false
	init(l: Int , s: Bool){
		self.legs = l
		self.Speak = s
	}
}

let khalid = Humans(n: "yaseen" , s: true)
khalid.livesFor = 100
khalid.type = "human"


let cow = Animals(l: 4 , s: false)
cow.livesFor = 50
cow.type = "Animal"


print(khalid.lifeSpan)
print(cow.lifeSpan)