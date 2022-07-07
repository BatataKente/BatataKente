import Foundation

// var products: [String:Int] = [:]

// products["Apple"] = 5
// products["Google"] = 16

// print(products)

var products: [Int:String] = [1:"Fone de ouvido",
                              2:"Macbook",
                              3:"Impressora",
                              4:"iPhone"]
// let chave = 2
// products[2] = "Mac Lanche Feliz"
// print(products[chave] ?? "Nenhum valor encontrado para a chave \(chave)")

products[2] = nil

// for key in products.keys
// {
//   print(key)
// }

// for value in products.values
// {
//   print(value)
// }

for (key,value) in products
{
  print("[\(key):\(value)]")
}