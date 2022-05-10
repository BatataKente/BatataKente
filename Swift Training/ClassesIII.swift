import Foundation

func linha()
{
  print("\n---------------------------------\n")
}

//

class Veiculo
{
  static let formatoDaVelocidade = "Km/h"
  
  var velocidade:Double
  var aceleracao:Double
  var velocidadeMaxima:Double = 300
  private var combustivel:Double

  var peso:Double
  
  init(combustivel:Double,peso:Double)
  {
    self.combustivel = combustivel
    self.velocidade = 0
    self.aceleracao = 0
    self.peso = peso
  }

  func getCombustivel() -> Double
  {
    return combustivel
  }

  func abasteceer(quant: Double)
  {
    combustivel += quant
    peso += quant
  }

  private func alteraPeso(novoPeso:Double)
  {
    print("ovo")
  }
  
  func locomover(distancia:Double)
  {
    if combustivel < distancia*0.2
    {
      print("Não tenho combustível suficiente")
    }
    else
    {
      print("andei \(distancia) km")
      combustivel -= distancia*0.2
    }
  }
  
  class func alerta
  {
    print("Se beber não case")
  }
}

Veiculo alerta()

var uno = Veiculo(combustivel: 10,peso:1000)

uno.locomover(distancia: 10)

// uno.combustivel = 0

print(uno.getCombustivel())

linha()