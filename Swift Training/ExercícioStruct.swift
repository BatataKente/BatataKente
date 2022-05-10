import Foundation

// STRUCT

struct Estruquete
{
  var nome:String
  var idade:Int
  var email:String?
}

var aluno:Estruquete = Estruquete(nome: "Josicleison",
                                  idade:13)

struct Construct
{
  var fruta:String
  var verdura:Int
  var pseudoFruto:String?

  init(fruta:String,verdura:Int)
  {
    self.fruta = fruta
    self.verdura = verdura
    pseudoFruto = "\(fruta)@mail.com"
  }
}

var coiso:Construct = Construct(fruta: "Pitanga",
                                verdura:123)

print(coiso.pseudoFruto!)