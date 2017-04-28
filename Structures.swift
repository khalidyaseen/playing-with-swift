// defining a structure in swift

struct Dimensions {
	var length : Int = 0
	var breadth : Int = 0
	var height : Int = 0
	
	func calculateVolume (_ l:Int , _ b:Int ,_ h:Int) -> Int{
		
		return l*b*h
	}
}


var instanceOfStruct = Dimensions()

instanceOfStruct.length = 10
instanceOfStruct.breadth = 10 
instanceOfStruct.height = 10

print(" The Volume of instance of Strcut is :\(instanceOfStruct.calculateVolume(instanceOfStruct.length,instanceOfStruct.breadth,instanceOfStruct.height))")

// using default intializer

var secondInstance = Dimensions(length:7 , breadth:20 , height:15)
print("The volume of secondInstance is :  \(secondInstance.calculateVolume(secondInstance.length,secondInstance.breadth,secondInstance.height))")

// checking that structures are passed by value 

print("secondInstance has dimensions as \n length: \(secondInstance.length) \n breadth: \(secondInstance.breadth) \n height : \(secondInstance.height) \n ")


var newInstance = secondInstance
print("newInstance has dimensions as \n length: \(newInstance.length) \n breadth: \(newInstance.breadth) \n height : \(newInstance.height) \n ")


print("changing newInstance Dimensions")

newInstance.length = 123
newInstance.breadth = 546
newInstance.height = 225

print("newInstance has dimensions as \n length: \(newInstance.length) \n breadth: \(newInstance.breadth) \n height : \(newInstance.height) \n ")

print("you can verify here that the dimensions of second Instance are still same even though we changed the newInstance. Its because Structs are passed by value and not by reference")

print("secondInstance has dimensions as \n length: \(secondInstance.length) \n breadth: \(secondInstance.breadth) \n height : \(secondInstance.height) \n ")


