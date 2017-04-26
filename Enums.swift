//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"
enum Countries {
	case India
	case America
	case Australia
	case Japan 
	case china
	case russsia
	case pakistan
	case egypt
	case turkey
	case uzbekistan
	case spain
}


var myCountry = Countries.turkey

myCountry = .china

print(myCountry)

// defining cases of enum in one line seperated by commas

enum Countries {
	case India , America , Australia , Japan , china , russsia , pakistan , egypt , 	turkey , uzbekistan , spain
}


var myCountry = Countries.turkey

myCountry = .spain

print(myCountry)
