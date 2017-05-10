//summing up the elements of integer array in one variable


let numbers = [1, 2, 3, 4]
let numberSum = numbers.reduce(0, { x , y in
    x + y
})

print(numberSum)