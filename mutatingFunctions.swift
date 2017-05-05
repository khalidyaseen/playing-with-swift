struct SomeStructure {
	static var abc : Int = 100
}

var test1 = SomeStructure()
print(SomeStructure.abc)
SomeStructure.abc = 200


var test2 = SomeStructure()
print(SomeStructure.abc)

// mutating methods to update instance variables
struct Point {
    var x = 0.0, y = 0.0
    mutating func isToTheRightOf(x: Double) -> Int {
		self.x = x
        return Int(self.x)//self.x > x
    }
}
var somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 17) > 1{
    print("This point is to the right of the line where x == 1.0")
}

// changing instance value in Class without using mutating keyeord before function definition
class Testing{
	var a: Int = 150
	func myMutatingFunction(B: Int) -> Bool{
		print(a)
		a = B
		print(a)
		return a == B
	}
	
}

var ins = Testing()

if ins.myMutatingFunction(B:20) {
	print ("value changed")
}
else{
	print("sorry some issues")
}


