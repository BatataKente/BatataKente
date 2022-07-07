import Foundation

// class Product {

//   var id: Int?
//   var name: String?
// }

// class Product {

//   let id: Int
//   var name: String

//   init(id: Int, name: String) {

//     self.id = id
//     self.name = name
//   }

//   func setName(name: String) {

//     self.name = name
//   }
// }

// let product1 = Product(id: 5, name: "MacInPobre")
// print(product1.name)

// let product2 = Product(id: 4, name: "MyPobre")
// print(product2.name)

// product2.setName(name: "String")
// print(product2.name)

// class Animal {

//   var sound: String
// } 

// class Cat: Animal {

//   let id: Int
//   var name: String

//   init(id: Int, name: String) {

//     self.id = id
//     self.name = name
//   }

//   func setName(name: String) {

//     self.name = name
//   }
// }

// let cat = Cat(id: 3, name: "Josicleison")
// cat.sound = "miau"

// class Casa {

//   var area: Float
//   var portas: Int
//   var comodos: Int
//   var janelas: Int

//   init (areaDacasa: Float, portas: Int, comodos: Int, janelas: Int) {

//     self.area = areaDacasa
//     self.portas = portas
//     self.comodos = comodos
//     self.janelas = janelas
//   }
// }

// var casa: Casa = Casa(areaDacasa: 200, portas: 10, comodos: 5, janelas: 8)

// print(casa.area)
// print(casa.portas)
// print(casa.comodos)
// print(casa.janelas)

// var casaDois = Casa(areaDacasa: 120, portas: 8, comodos: 6, janelas: 10)

// print("")
// print(casaDois.area)
// print(casaDois.portas)
// print(casaDois.comodos)
// print(casaDois.janelas)

class JogadorPorReferencia {

  var nome: String

  init(nome: String) {

    self.nome = nome
  }
}

class JogoPorReferencia {

  var jogador1: JogadorPorReferencia? = nil
  var jogador2: JogadorPorReferencia? = nil

  func mostrarJogadores() -> String {

      return "jogador1: \(jogador1?.nome ?? "ninguém")\njogador2: \(jogador2?.nome ?? "ninguém")"
  }
}

do {
  let jogo = JogoPorReferencia()

  let jogador = JogadorPorReferencia(nome: "Josicleison")
  jogo.jogador1 = jogador

  // let segundoJogador = jogador
  let segundoJogador = JogadorPorReferencia(nome: "Clodoaldo")
  // segundoJogador.nome = "Clodoaldo"
  jogo.jogador2 = segundoJogador

  // print(jogo.mostrarJogadores())
  
  if jogador === segundoJogador {

    print("igual")
  }
  else {
    
    print("diferente")
  }
}

//enum também é do tipo (valueTypes)
struct JogadorPorValor {

  var nome: String

  init(nome: String) {

    self.nome = nome
  }
}

struct JogoPorValor {

  var jogador1: JogadorPorValor? = nil
  var jogador2: JogadorPorValor? = nil

  func mostrarJogadores() -> String {

    return "jogador1: \(jogador1?.nome ?? "ninguém")\njogador2: \(jogador2?.nome ?? "ninguém")"
  }
}

do {
  var jogo = JogoPorValor()

  let jogador = JogadorPorValor(nome: "Josicleison")
  jogo.jogador1 = jogador

  var segundoJogador = jogador
  segundoJogador.nome = "Clodoaldo"
  jogo.jogador2 = segundoJogador

  print(jogo.mostrarJogadores())
}

//array também é do tipo valor
var array = ["teste","testo"]

var inha = array[0]

inha = "Marcidineison"

print(array)
print(inha)