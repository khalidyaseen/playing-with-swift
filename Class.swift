struct Grades{
	var marks: Int = 0
	var percentage : Int = 0
}

class Person {
	
	var g = Grades()
	var name: String?
	var mobileNo: Int = 0
	var salary: Int = 0
	
	func eligiblityOfTax (_ sal: Int) -> String{
		if sal > 10000 {
			return ("You have to pay your tax")
		} else {
			return ("you are excluded from tax ")
		}
	}
	
	func willIBePromoted (_ m: Int , _ p: Int) -> String {
		if (m > 450) || (p > 70) {
			return ("congratulations you will be promoted")
		} else{
			return ("sorry you wont be promoted")
		}
	}
}

var p1 = Person()
p1.name = "Yaseen"
p1.mobileNo = 9906794445
p1.salary = 20000
p1.g.marks = 500
p1.g.percentage = 72

print("hey P1 : \(p1.eligiblityOfTax(p1.salary))")

// creating a new reference to p1

var p2 = p1

p2.salary = 3000
print("p2 salary now \(p2.salary)")
print("p1 salary now \(p1.salary) this is why classes are reference types")


print("hey P1 : \(p1.eligiblityOfTax(p1.salary))")


print(" hey \(p1.name!) your promtion eligibilty says \(p1.willIBePromoted(p1.g.marks , p1.g.percentage))")