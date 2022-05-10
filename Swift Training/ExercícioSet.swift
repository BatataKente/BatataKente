import Foundation

var primeiraDivisao: Set<String> = ["farofa","batata","taioba","tomate"]

print(primeiraDivisao.count)

var times: Set<String> = []

if !times.contains("taioba")
{
  print("não tem taioba")
}

var inteiros: Set<Int> = [1,2,3,4,5,6,8,5,2,99,7,55,4342,12]

if !inteiros.isEmpty
{
  print("\nNão ta vazio")
}

var inteiras: Set<Int> = [5,4,3,2,1,-2,-1,45,65]

print(inteiras.first!)

inteiras.removeFirst()
print(inteiras)

inteiras.removeAll()
print(inteiras,"\n")

primeiraDivisao.insert("xurupita")
primeiraDivisao.insert("xurupita")

print(primeiraDivisao)

var resultado = inteiros.intersection(inteiras)
print(resultado)

resultado = inteiros.union(inteiras)
print(resultado)

resultado = inteiros.subtracting(inteiras)
print(resultado)

var aluno = ("Josicleison Elves", 15, "12312312312")

print(aluno.0)

var aluna: (nome: String,idade: Int,cpf: String) = ("Josicleide Pinto", 15, "12312312312")

print(aluna.nome)