//calling a function which returns a reference type


func jediTrainer () -> ((String, Int) -> String) {
  func train(name: String, times: Int) -> (String) {
    return "\(name) has been trained in the Force \(times) times"
  }
  return train
}
let train = jediTrainer()

var str = train("Obi Wan",3)
let xyz = train
var fff = xyz("kalid",5)
print(str)
print(fff)


// variadic function
func jediBladeColor (colors: String...) -> () {
  for color in colors {
    print("\(color)")
  }
}
jediBladeColor(colors: "red","green","orange")