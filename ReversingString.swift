func reverse(_ s: String) -> String {
 var str = ""
 for character in s.characters {
    str = "\(character)" + str
 }
 return str
}
print (reverse("!pleH"))