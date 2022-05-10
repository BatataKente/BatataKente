import Foundation

func linha()
{
  print("\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n")
}

/*DESAFIO MAIOR X MENOR*/

func MaiorMenor(_ valores:Int...) -> (Int,Int)
{
  var maior = valores[0]
  var menor = valores[0]
  
  for i in 0...valores.count-1
  {
    if valores[i] > maior
    {
      maior = valores[i]
    }
    if valores[i] < menor
    {
      menor = valores[i]
    }
  }
  return (maior,menor)
}

print(MaiorMenor(2,3,5))
print(MaiorMenor(23,6,43,7))
print(MaiorMenor(0,2,3))
print(MaiorMenor(5,3,2))
print(MaiorMenor(3,2,1,78,4,-50))

linha()

//SOLUÇÃO

print("insira os valores de inteiros: ")

var input = readLine()

if let texto = input
{
  let valores: (menor: Int, maior:Int) = SOLAMaiorMenor(texto)

  print("O menor valor é \(valores.menor), e o maior valor é \(valores.maior)")
}

func SOLAMaiorMenor(_ texto:String) -> (Int,Int)
{
  // let arraySubString = texto.split(separator:",")
  // var arrayInt: [Int] = []
  
  // for substring in arraySubString
  // {
  //   if let Int = Int(substring)
  //   {
  //     arrayInt.append(Int)
  //   }
  // }
  
  let substrings = texto.split(separator:",")
  let intArray = substrings.map({Int($0) ?? 0})
  
  var maior:Int = Int.min
  var menor:Int = Int.max

  for i in intArray
  {
    if i <= menor
    {
      menor = i
    }

    maior = i >= maior ? i : maior
  }
  return (menor,maior)
}

print("\ninsira os valores de inteiros: ")

input = readLine()

if let texto = input
{
  let valores: (menor: Int, maior:Int) = SOLBMaiorMenor(texto)

  print("O menor valor é \(valores.menor), e o maior valor é \(valores.maior)")
}

func SOLBMaiorMenor(_ texto:String) -> (Int,Int)
{
  let arraySubString = texto.split(separator:",")
  var arrayInt: [Int] = []
  
  for substring in arraySubString
  {
    if let Int = Int(substring)
    {
      arrayInt.append(Int)
    }
  }
  
  var maior:Int = Int.min
  var menor:Int = Int.max

  for i in arrayInt
  {
    if i <= menor
    {
      menor = i
    }

    maior = i >= maior ? i : maior
  }
  return (menor,maior)
}

linha()
