import Foundation

var mercado = ["chinelo":"123","batata":"2","arroz":"4","feijao":"45","taioba":"32"]

print(mercado["chinelo"]!)

print("antes da atualização ",mercado,"\n")

mercado["feijao"] = "54"

print(mercado,"\n")

let veio = mercado.updateValue("6453", forKey: "feijão")

print(veio ?? ""," é o valor antigo\n")

print(mercado,"\n")

print(Array(mercado.keys))
print(Array(mercado.values))