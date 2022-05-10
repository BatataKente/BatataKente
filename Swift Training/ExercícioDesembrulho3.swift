import Foundation

var numero:Int = -1

//print(numero)

var (nome,idade)=("Josicleide",15)

print(nome)
print(idade)

var a,b:Int?

a=2
b=3

var soma:Int

if a != nil && b != nil
{
  soma=a!+b!
  print(soma)
}