import Foundation

func megaSenaGenerator() {

  var numbers = 6
  var resultado: Set<Int> = []
  
  while(numbers > 0){
    
    let generated = Int.random(in: 0...60),
        resposta = resultado.insert(generated)

    if (resposta.inserted) {
      numbers -= 1
      print(resultado)
    }
  }
}

func megaSenaGeneratorV2(_ total: Int,
                         _ interval: ClosedRange<Int>) {

  var resultado: Set<Int> = [],
      numbers = total
  
  while(numbers > 0){
    
    let generated = Int.random(in: interval),
        resposta = resultado.insert(generated)

    if (resposta.inserted) {
      numbers -= 1
      print(resultado)
    }
  }
}

func megaSenaGeneratorValores(_ total: Int,
                         _ interval: ClosedRange<Int>) -> String {

  var resultado: Set<Int> = [],
      numbers = total,
      mentirinha: String = ""
  
  while(numbers > 0){
  
    let generated = Int.random(in: interval),
        resposta = resultado.insert(generated)
  
    if (resposta.inserted) {
        numbers -= 1
        mentirinha += ("\(resultado)\n")
    }
  }
  
  return mentirinha
}
    
func megaSenaGeneratorValorFinal(_ total: Int,
                         _ interval: ClosedRange<Int>) -> Set<Int> {

  var resultado: Set<Int> = [],
      numbers = total
  
  while(numbers > 0){
  
    let generated = Int.random(in: interval),
        resposta = resultado.insert(generated)
  
    if (resposta.inserted) {
      numbers -= 1
    }
  }
  return resultado
}

print(megaSenaGeneratorValores(10, -100...500))

print(megaSenaGeneratorValorFinal(10, -100...500))