func toLowerCase(_ str: String) -> String {
    let lowerChar:[Character] = ["a","b","c","d","e","f","g","h","i","J","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var lowerCaseString = String()
    let upperChar:[Character] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    for char in str {
        if char >= "A" && char <= "Z" {
            lowerCaseString.append(lowerChar[upperChar.firstIndex(of: char)!])
        } else {
            lowerCaseString.append(char)
        }
    }
    return lowerCaseString
}

print(toLowerCase("Hello"))
print(toLowerCase("HELLO"))
print(toLowerCase("heLLO"))

