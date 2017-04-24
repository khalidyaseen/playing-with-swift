var thing = "cars"
 
let closure = { [thing] in
  print("I love \(thing)")
}
 
thing = "airplanes"
 
closure()

print("****************************************-")

var thing2 = "cars"
 
let closure2 = {
  print("I love \(thing2)")
}
 
thing2 = "airplanes"
 
closure2()
