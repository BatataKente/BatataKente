import Foundation

func linha()
{
  print("\n---------------------------------\n")
}

//DESIGN PATTERN: SINGLETON

class ConexaoComBancoDeDados
{
  static var instance = ConexaoComBancoDeDados()

  private init() {}

  func statusDaConexao()
  {
    print("Tá Conectado")
  }
}

ConexaoComBancoDeDados.instance.statusDaConexao()

var a = ConexaoComBancoDeDados.instance
var b = ConexaoComBancoDeDados.instance

if a === b
{
  print("SINGLETON")
}

