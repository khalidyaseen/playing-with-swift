//recursive enums

enum ArithmeticExpression {
    case number(Int)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
}

// indirect enum ArithmeticExpression {
//     case number(Int)
//     case addition(ArithmeticExpression, ArithmeticExpression)
//     case multiplication(ArithmeticExpression, ArithmeticExpression)
// }
let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let ten = ArithmeticExpression.number(10)
let twenty = ArithmeticExpression.number(20)
let sum = ArithmeticExpression.addition(five, four)
let mulagain = ArithmeticExpression.multiplication(ArithmeticExpression.addition(ten, twenty), sum)
let product = ArithmeticExpression.multiplication(ArithmeticExpression.addition(sum, ArithmeticExpression.number(2)), mulagain)

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}
 
print(evaluate(product))
print(evaluate(mulagain))