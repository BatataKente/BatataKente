import Foundation

func linha()
{
  print("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
}

/*DESAFIO MAIOR X MENOR*/


print("\ninsira os valores de inteiros: ")

var input = readLine()
var tupla:(maior:Int,menor:Int) = MaiorMenorII(input ?? "")

print("O maior valor é \(tupla.maior) e o menor é \(tupla.menor)")

func MaiorMenorII(_ valores:String) -> (Int,Int)
{
  var maior = 0
  var menor = 9
  
  for i in 0...9
  {
    if valores.contains(String(i))
    {
      if i > maior
      {
        maior = i
      }
      if i < menor
      {
        menor = i
      }
    }
  }
  return (maior,menor)
}