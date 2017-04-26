// associated values in enumeration
enum Barcode {
	case upc(Int , Int , Int , Int)
	case qr(String)
	
	func get () -> Int {
		switch self {
			case let .upc (a , _ , _ ,_) :
				return a
			case .qr( _ ) :
				return 33
		}
	}
}

var label = Barcode.upc(1254,3251,1547,2254)
label = .qr("asdasfasdfasf")

print(label.get())

// // getting raw value in enumerations

enum Raw: String {
	case a = "hello" , b , c , d
}

var test = Raw.d.rawValue
print(test)

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let earthsOrder = Planet.earth.rawValue

if let somePlanet = Planet(rawValue: 7) {
print(somePlanet)
}
else{
print(earthsOrder)
}