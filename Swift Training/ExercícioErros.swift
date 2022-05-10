import Foundation

var frutas = [
  "banana",
  "maracujá",
  "mandioca",
  "manga",
  "limão"
]

enum ErrosDeLogin: Error
{
  case falhaDeConexaoComInternet
  case falhaDeConexaoComBancoDeDados
  case usuarioOuSenhaInvalido
}

func Login(_ usuario:String,_ senha:String) throws -> Bool
{
  if(TemConexaoComInternet())
  {
    if(TemConexaoComBancoDeDados())
    {
      if(usuario == "admin" && senha == "123")
      {
        return true
      }
      else
      {
        throw ErrosDeLogin.usuarioOuSenhaInvalido
      }
    }
    else
    {
      throw ErrosDeLogin.falhaDeConexaoComBancoDeDados
    }
  }
  else
  {
    throw ErrosDeLogin.falhaDeConexaoComInternet
  }
}

func TemConexaoComInternet() -> Bool
{
  return true
}

func TemConexaoComBancoDeDados() -> Bool
{
  return true
}

do
{
  let fizLogin = try Login("admin","132")
  print(fizLogin)
}
catch
{
  print(error)
}

// enum ErrosDeLogin: Error
// {
//   case falhaDeConexaoComInternet
//   case falhaDeConexaoComBancoDeDados
//   case usuarioOuSenhaInvalido
// }

do
{
  let fizLogin = try Login("admin","132")
  print(fizLogin)
}
catch ErrosDeLogin.falhaDeConexaoComInternet
{
  print("Sem conexão")
}
catch ErrosDeLogin.falhaDeConexaoComBancoDeDados
{
  print("Sem conexão com o banco de dados")
}
catch ErrosDeLogin.usuarioOuSenhaInvalido
{
  print("Usuario ou senha invalida")
}
