import Foundation

func lastUppercasedCharacters(_ value: String) -> String {

  if value.count < 3 {
    
    return value.lowercased()
  }
  else {

    var result = value
    var addChar: String = ""
    let lastThree = value.suffix(3)
    
    result.removeLast(3)
    
    addChar.append(contentsOf: result)
    addChar.append(contentsOf: String(lastThree.uppercased()))
    return addChar
  }
}

print(lastUppercasedCharacters("Josicleison"))