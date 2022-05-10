import Foundation

func linha()
{
  print("\n-----------------------\n")
}

// FUNÇÃO

/* ESTRUTURA DE FUNÇÃO
func nomeDaFunção(nomeDoParametro:Tipo, ...) -> tipoDeRetorno
{
  Comandos

  SE TIVER RETORNO return tipoDeRetorno
}
*/

func olaMundo()
{
  print("Hello World")
}

olaMundo()

func mundoCruel()
{
  print("farofa")
}

func mundoCruel(quemMorreu: String)
{
  print("\(quemMorreu) is dead")
}

mundoCruel(quemMorreu: "Josicleison")
mundoCruel()
print("\n")

func sucoDeFruta(_ queFruta: String)
{
  print("suco de \(queFruta)")
}

sucoDeFruta("maracujá")

func sefaropoles(to quandus: String)
{
  print("faropolis di \(quandus)")
}

sefaropoles(to: "klshadaus")

func mostraSoma(_ a:Int,_ b:Int)
{
  print(a+b)
}

mostraSoma(1,3)
print("\n")

func soma(_ a:Int,_ b:Int) -> Int
{
  return a+b
}

let resultado = soma(4356356,1)
print(resultado)

func media(valorInicial a:Float, _ valores:Float...) -> Float
{
  var resultado:Float = 0
  var vezes:Float = 1

  resultado += a

  for valor in valores
  {
    resultado += valor
    vezes += 1
  }
  
  return resultado/vezes
}

let ovo = media(valorInicial: 2,2,2,2,4,2,2,2,2,2,2)

print(ovo,"e arredondado porcamente",Int(ovo))

func novoAluno(_ nome:String) -> (matricula:Int,email:String)
{
  let emailAluno = ("\(nome)@escola.com")
  let matriculaAluno = Int.random(in: 1...1000)

  return (matriculaAluno,emailAluno)
}

var aluno = novoAluno("Josicleide")
print("a matrícula é \(aluno.matricula) e o email é: \(aluno.email)")

print("\n\n")

// func soma(_ a:Int,_ b:Int) -> Int
// {
//   return a+b
// }
func subtracao(_ a:Int,_ b:Int) -> Int
{
  return a-b
}
func divisao(_ a:Int,_ b:Int) -> Int
{
  return a/b
}
func multiplicacao(_ a:Int,_ b:Int) -> Int
{
  return a*b
}

func aplicarOperacao(_ a:Int,_ b:Int, operacao: (Int,Int)->Int) -> Int
{
  return operacao(a,b)
}

print(aplicarOperacao(4,2,operacao:soma))
print(aplicarOperacao(4,2,operacao:divisao))

typealias OP = (Int,Int) -> Int

func pegaFrango(_ nome:String) -> OP
{
  switch nome
  {
    case "soma": return soma
    case "divisão": return divisao
    case "subtração": return subtracao
    default: return multiplicacao
  }
}

linha()

print(aplicarOperacao(4,2,operacao: pegaFrango("soma")))
print(aplicarOperacao(4,2,operacao: pegaFrango("divisão")))