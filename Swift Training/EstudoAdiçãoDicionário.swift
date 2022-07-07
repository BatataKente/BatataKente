import Foundation

var user = ["Josicleison":"123"]

user["Rodolfo"] = "321"

for (nome,senha) in user
{
  print("\(nome) : \(senha)")
}