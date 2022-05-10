import Foundation

var idade:UInt?=22
var peso:Float?=80.7
var gênero:Character?="F"
var nome:String?="Josicleide"
var nome:String?="Josicleide"

print("----------x----------")

if let valeu = nome{
  print("nome:",valeu)}

if let valeu = idade{
  print("idade:",valeu)}

if let valeu = peso{
  print("peso:",valeu)}

if let valeu = gênero{
  print("gênero:",valeu)}

print("----------x----------")

if let a=nome
{if let b=idade
  {if let c=peso
    {if let d=gênero
      {
        print("""
        ----------x----------
        nome: \(a)
        idade: \(b)
        peso: \(c)
        gênero: \(d)
        ----------x----------
        """)
      }  
    }
  }
}*/

if let a=nome
{if let b=idade
  {if let c=peso
    {if let d=gênero
      {
        print("\n----------x----------\nnome: \(a)\nidade: \(b)\npeso: \(c)\ngênero: \(d)\n----------x----------")
        print(a.count)
      }  
    }
  }
}
