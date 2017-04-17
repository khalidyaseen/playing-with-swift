//switch example 1

let point = (x: 0, y:4)

switch point {
		case let q1 where (point.x > 0) && (point.y > 0):
			print("\(q1) is in quadrant  1")
		case let q2 where (point.x < 0) && (point.y > 0):
			print("\(q2) is in quadrant  2")
		case let q3 where (point.x < 0 ) && (point.y < 0):
			print("\(q3) is in quadrant  3")
		case let q4 where (point.x > 0 ) && (point.y < 0):
			print("\(q4) is in quadrant  4")
		case(_, 0):
			print("\(point) sits on x axis")
		case(0, _):
			print("\(point) sits on y axis")
		default:
			print("case not covered")
	
}


//switch example 2

var err1: Int = 4044
var err2: Int = 4042

var errcode = (E1: err1, E2: err2)

switch errcode {
	case (404 , 404):
		print("both didnt worked")
	case(404 , _):
		print("first one didnt worked")
	case(_ , 404):
		print("second one didnt worked")
	default:
		print("both worked")
	}

