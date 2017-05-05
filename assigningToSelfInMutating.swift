// assigning to self in mutating method

struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        self = Point(x: x + deltaX, y: y + deltaY)
    }
}

var myPoint = Point(x: 30.0 , y: 50.0)
myPoint.moveBy(x: 5 , y: 5)

print(myPoint.x)
print(myPoint.y)


