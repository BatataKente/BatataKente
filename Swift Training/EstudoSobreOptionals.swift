import Foundation

//var greeting = "Hello, playground"

//var idade: Int? = nil
//
//idade = 18

//struct Pessoa {
//
//    var name: String
//    var idade: Int?
//}

struct Pessoa {
    
    var name: String
    var idade: Int!
}

var pessoas: [Pessoa] = []

pessoas.append(Pessoa(name: "Josicleison"))
pessoas.append(Pessoa(name: "Josicleide", idade: 15))
pessoas.append(Pessoa(name: "Marcelo", idade: 78))
pessoas.append(Pessoa(name: "Elves", idade: 33))

var soma: Int = 0
var count: Int = 0

for pessoa in pessoas {
    
//    guard pessoa.idade != nil else {continue}
    guard let idade = pessoa.idade else {continue}
     
//    soma = idade
    soma += idade
//    soma += pessoa.idade
//    soma += pessoa.idade ?? 0
    
    count += 1
}

print(soma/count)
