struct Mystruct {
	static var staticStoredProperty : String?
	 var a = 10 , b = 50 
	static var ComputedStaticaProperty: Int {
		return 100 
	}
	var getset : Int {
		get{
			var tempA = a
			return tempA
		}
		set(myNewValue){
			a = myNewValue
			b = myNewValue
		}

	}
	

}

Mystruct.staticStoredProperty = "khalid majeed"

print((Mystruct.staticStoredProperty)!)

var instance = Mystruct()

print(instance.a + Mystruct.ComputedStaticaProperty)

var x = instance.getset
instance.getset = (12)
print(x)
print(instance.a)
print(instance.b)

//print(Mystruct.ComputedStaticaProperty)