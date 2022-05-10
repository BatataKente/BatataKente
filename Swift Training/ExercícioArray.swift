import Foundation

var iavel = 0

//Array

var redura = ["coiso","treco","negosso","bagulho"]
var iedades = [10,5,15,20]
var sovia:[String] = []
var ginha:[String]

ginha = ["23"]
sovia = ginha

var inha:[String]?

print(redura.count)

if sovia.isEmpty
{
    print("Nao tem ovos")
}

let aluno = redura[1]
let idade = iedades[3]

redura[1] = "trecoso"

print(redura)

redura[1...2] = ["cheira"]

print(redura)

print(redura.first!)
print(redura.first ?? "")

if let aluno = redura.last
{
  print(aluno)
}

redura.append("Andreison")

print(redura,"\n")

redura += ["galinha","Batata"]
print(redura)

redura.removeFirst()

print(redura)
if redura.contains("bagulho")
{
  print("ainda tem bagulho\n")
}
redura.removeLast()
print(redura)
if redura.contains("bagulho")
{
  print("ainda tem bagulho\n")
}
redura.remove(at: 1)
print(redura)
//redura.removeAll()

if !redura.contains("bagulho")
{
  print("ainda tem bagulho\n")
}