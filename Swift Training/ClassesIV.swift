import Foundation

func linha()
{
  print("\n---------------------------------\n")
}

//

class Pessoa
{
  var nome:String
  var idade:Int
  var cpf:String

  init(nome:String,idade:Int,cpf:String)
  {
    self.nome = nome
    self.idade = idade
    self.cpf = cpf
  }

  func apresentacao()
  {
    print("Olá meu nome é \(nome)")
  }
}

class Aluno: Pessoa
{
  var matricula:Int

  init(nome:String,idade:Int,cpf:String,matricula:Int)
  {
    self.matricula = matricula
    super.init(nome:nome,idade:idade,cpf:cpf)
  }

  convenience init(_ nome:String,_ idade:Int,_ cpf:String)
  {
    let novaMatricula = Int.random(in: 1...1000)
    // self.matricula = novaMatricula
    self.init(nome:nome,idade:idade,cpf:cpf,matricula:novaMatricula)
  }
  
  override func apresentacao()
  {
    print("Olá meu nome é \(nome) e minha matricula é \(matricula)")
  }
}

var josicleison = Aluno("Josicleison Elves",15,"12342354367")

josicleison.apresentacao()