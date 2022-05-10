import Foundation

var frutas: [String] = ["Acerola", "Manga", "Banana", "Limão", "Maracujá"]

var clientes: [(login:String,senha:String,idade:Int)] = [
  ("Josicleison Elves", "123", 15),
  ("Josicleia Nakamoto", "321", 23),
  ("Tekomo Nakama", "gin", 41),
  ("Julio Power", "carambola", 32)
]

for element in frutas
{
  print(element)
}

print("\n")

for i in 1...10
{
  print(i)
}

print("\n")

for i in 1...frutas.count
{
  print("\(i). \(frutas[i-1])")
}

print("\n")

for fruta in clientes
{
  print(fruta)
}

print("\n")

for (login, senha, idade) in clientes
{
  print("O login é \(login), a senha é \(senha) e a idade é \(idade)")
}

var idade = clientes[0].idade

while(idade < 18)
{
  print("Não pode ser preso, pois tenho \(idade) anos")
  idade+=1
}

if idade == 18
{
  print("\(clientes[0].login) pode ir pro xadrez pois tem \(idade) anos")
}

