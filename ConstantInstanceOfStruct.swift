// checking the constant type struct insance cannot change the var stored variables

struct mystruct {
	var num : Int
	let num2 : Int
}

var myVarinstance = mystruct(num: 10 , num2: 30)
myVarinstance.num = 50

print(myVarinstance.num)

let myConstInstance = mystruct(num: 1000 , num2: 3000)

//myConstInstance.num = 50 this will lead to error as the instance is of type contant and struct are value type

var test = mystruct(num:15 , num2:30)