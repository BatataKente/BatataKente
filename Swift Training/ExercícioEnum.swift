import Foundation

// ENUMERADORES

enum Setor
{
  case norte,sul,leste,oeste
}

var ingresso:Setor = Setor.norte
var ingressa = Setor.sul
var ingressao:Setor = .oeste

enum DiasDaSemana:Int
{
  case domingo = 1
  case segunda
  case terca
  case quarta
  case quinta
  case sexta
  case sabado
}

var dia = DiasDaSemana.quarta
print(dia)
print(dia.rawValue)

enum grosenha
{
  case almoco(String)
  case janta(Int)
  case cafe(Double,Float)
}