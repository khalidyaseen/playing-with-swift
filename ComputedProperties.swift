// computed property with setter and getters


struct abc {
	var a1 = 0.0 , b1 = 0.0
}

struct testingGetterAndSetter {
	//var a = 0.0 , b = 0.0 , c = 0.0
	var linkToAbc = abc()
	var variable: Int
	var ComputedProperty : abc {
		get{
			let newA = linkToAbc.a1 + 10
			let newB = linkToAbc.b1 + 10
			//let newC = c + 10
			return abc(a1: newA , b1: newB)
		}
		
		set{
			linkToAbc.a1 = newValue.a1 + 50
			linkToAbc.b1 = newValue.b1 + 50
		}
	}
	
}

// var callingGetter = testingGetterAndSetter(a: 20 , b: 30 , c: 40)
// print(callingGetter.ComputedProperty)

// //callingGetter.ComputedProperty(200.0 , 500.0 , 120.0)
// callingGetter.ComputedProperty = abc(a1: 50.0 , b1:50)

// print(testingGetterAndSetter.linkToAbc.a1)
var callingGetter = testingGetterAndSetter(linkToAbc:abc(a1: 25 , b1: 25), variable: 50)

//var newV = 
callingGetter.ComputedProperty = abc(a1:100 , b1:100)
print(callingGetter.linkToAbc.a1)