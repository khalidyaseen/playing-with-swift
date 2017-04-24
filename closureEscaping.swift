//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

// defining simple closures and calling them

print("Hello world!")
let myClosure = {
    print("Hello from myClosure!")
}

myClosure()

var myClosure1 = {(x: Int, y: Int) -> Int in 
				 	print("answer of mul is \(x*y)")
				  return x*y
				  
				 
				 }

//var testing = myClosure1(5,6)
var testing2 = myClosure1
print("anwer outside closure is \(testing2(7,5))")

var abc : [Int] = []
func xyz(action: @escaping (Int,Int)-> Int) {
    // Run the passed 'action'
    // with the parameters: 2, 5
    abc.append(action(2,5))
	print ("lala")
}

// Call it


xyz(action: {(x:Int, y:Int) -> Int in
    //print("x * y = \( x * y )")
			return x*y
});

var fff = abc[0]
print(fff)