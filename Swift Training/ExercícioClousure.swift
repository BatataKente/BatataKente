import Foundation

// CLOUSURE

/* ESTRUTURA DE FUNÇÃO
{
  (nomeDoParametro:Tipo, ...) -> tipoDeRetorno in
  Comandos

  return tipoDeRetorno
}
*/

var frutas = [
  "banana",
  "maracujá",
  "mandioca",
  "manga",
  "limão"
]

func linha()
{
  print("\n-----------------------\n")
}

func soma(_ a:Int,_ b:Int) -> Int
{
  return a+b
}
func subtracao(_ a:Int,_ b:Int) -> Int
{
  return a-b
}
func divisao(_ a:Int,_ b:Int) -> Int
{
  return a/b
}

func aplicarOperacao(_ a:Int,_ b:Int, operacao: (Int,Int)->Int) -> Int
{
  return operacao(a,b)
}

print("\n", aplicarOperacao(4,2,operacao: {
      (_ a:Int, _ b:Int) -> Int in
  
      return a*b
}))

print("\n", aplicarOperacao(4,2,operacao: {
      (_ a, _ b) -> Int in
  
      return a*b
}))

print("\n", aplicarOperacao(4,2,operacao: {
      (_ a, _ b) in
  
      return a*b
}))

print("\n", aplicarOperacao(4,2,operacao: {
      a, b in
  
      return a*b
}))

print("\n", aplicarOperacao(4,2,operacao: {
      return $0*$1
}))

print("\n", aplicarOperacao(4,2,operacao: {$0*$1}))

print("\n", aplicarOperacao(4,2,operacao: *))

print("\n", aplicarOperacao(4,2) {$0 * $1})

linha()

//ARRAY var frutas = ["banana","maracujá","mandioca","manga","limão"]

let Frutas = frutas.map({
    ($0.uppercased())
  }
)

print(Frutas)

let email = frutas.map({
    ($0 + "@mail.com")
  }
)

print("\n", email)