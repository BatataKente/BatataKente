import Foundation

//Primeira forma de desembrulhar variável
var greeting="Sanduiche de frango"
var idade:Int?

idade=31

if idade != nil
{
  print(idade!)
}

//Segunda forma de desembrulhar variável(e conversão)
var text:String="123"
var soma:Int?

soma=Int(text)

if let valeu = soma
{
  print(valeu*2)
}

if soma != nil
{
  print(soma!)
}

//Terceira forma de desembrulhar variável(e conversão)
var texto:String="17"
var result=Int(texto) ?? 0

print(result)