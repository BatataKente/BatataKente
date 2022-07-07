import Foundation

// ESTUDO P/PROVA, VÍDEO AULA 1 ###################################

var _nomeDaVariavel:String
var Josicleison = "Josicleison"
var numero = 29 //Inteiro

// O Swift é fortemente tipado

let constante:String
let valor = 10

// Palavras reservadas são as que já tem contexto no compilador
// O Swift é case sensitive

let minhaIdade = 31
let Minhaidade:Int

Minhaidade = 25

// print("\(minhaIdade) e \(Minhaidade)")


// ESTUDO P/PROVA, VÍDEO AULA 2 ###################################

//Boolean = true or false, 1 or 0

var altura:Float = 1,
    podeEntrar:Bool,
    canGo:Bool

var idade:UInt //UInt leia-se sempre positivo
var number:Int //Int leia-se pode ser negativo ou positivo

//FLOAT(ponto flutuante) ou DOUBLE

var peso = 80.7

var genero: Character = "F",
    aspas: Character = "\"",
    enter: Character = "\n"

var text = "M", // O Swift entende que é string
    apresentacao = "Meu nome é Josicleison.\nminha idade é 15 anos.",
    outraApresentacao = """
Meu nome é Josicleison.
minha idade é 15 anos.
"""

var numeroDeCaracteres:Int = outraApresentacao.count


// VÍDEO AULA 3 ###################################

var text1:String = "O céu é azul",
    text2 = "e a água é molhada",
    text3 = "minha idade é: ",
    text4 = "e meu peso é: ",
    anosDeVida = 31,
    massaVezesAceleracao = 100

//Não pode começar variável com número

let finalText1 = text1 + " " + text2 // só soma se for variavel do mesmo tipo

let finalText2 = text3 + "\(anosDeVida) " + text4 + "\(massaVezesAceleracao)"


// VÍDEO AULA 4(Optional)###################################

//O valor fica nulo não gastando espaço na memória

var age:Int?

age = 31

//Optional Binding

// if let ageUnwrap = age
// {
//   print(ageUnwrap)
// }

// if age != nil
// {
//   print(age!)
// }

var texto:String = "123",
    resultado:Int?

resultado = Int(texto) // resultado presisa ser optional para o caso do texto não ser número

var textoTwo:String = "1958",
    result = Int(textoTwo)


var effect = Int(textoTwo) ?? 0

// print(effect)


// VÍDEO AULA 5 ###################################

var numbero:Int = -1
// print(-numbero)

var integer = 10
var (name, level) = ("Josicleison",50)

// print(name)
// print(level)

var a:Int = 2,
    b = 3

var somaDosValores = a + b
var divisaoDosValores = a / b
var restoValores = a % b

// print(restoValores)

var c:Double = 0 // Se tentar somar com Int vai dar erro

var somaDeTudo = Double(a) + Double(b) + c

var count: Int = 0

count += Int(somaDeTudo)

var boolean = 10 != 8

var meiaVerdade = false && true

// print(meiaVerdade)

meiaVerdade = false || true

// print(meiaVerdade)

var possoEntrar = false
meiaVerdade = !possoEntrar

// print(meiaVerdade)

var conta = 1 + 2 * 3

// print(conta)

var coiso = 1>2 && 3<4 || true

// print(coiso)

coiso = 1>2 && (3<4 || true)

// print(coiso)

coiso = (1>2 && (3<4 || true)) || true

// print(coiso)

var nota = 7.1,
    passei = (nota >= 7.0),
    fuiAprovado:String

// print(passei)

fuiAprovado = (nota >= 7.0) ? "aprovado" : "reprovado"

// print(fuiAprovado)


// VÍDEO AULA 6 ###################################

//Range

//Closed range

let intervalo0_10 = 0...10

//Half-Closed range

let intervalo0_11 = 1..<12


// VÍDEO AULA 7 ###################################

var diaDaSemana:Int = 1

// switch diaDaSemana
// {
//   case 1: print("domingo")
//   case 2: print("segunda")
//   case 3: print("terça")
//   case 4: print("quarta")
//   case 5: print("quinta")
//   case 6: print("sexta")
//   default: print("sabado")
// }


// switch diaDaSemana
// {
//   case 2...6: print("tenho que trabalhar")
//   default: print("posso descansar")
// }

// if diaDaSemana == 1
// {
//   print("domingo")
// }
// else if diaDaSemana == 2
// {
//   print("segunda")
// }
// else if diaDaSemana == 3
// {
//   print("terça")
// }
// else if diaDaSemana == 4
// {
//   print("quarta")
// }
// else if diaDaSemana == 5
// {
//   print("quinta")
// }
// else if diaDaSemana == 6
// {
//   print("sexta")
// }
// else
// {
//   print("sabado")
// }


// VÍDEO AULA Array ###################################

var alunos = ["Godolfredo","Velma","Vilma","Josicleide","Josicleison"],
    idades = [14,15,13,12,21],
    salaDois:[String] = [],
    salaTres:[String]?

let quantidadeDeAlunos:Int = alunos.count

// if salaDois.isEmpty
// {
//   for i in stride(from: 0,to: alunos.count,by: 1)
//   {
//     print(alunos[i])
//   }
// }

alunos[0] = "Batista"

// alunos[0...4] = ["alunos"]

// for element in alunos
// {
//   print(element)
// }

// if let aluno = alunos.last
// {
//   print(aluno)
// }

// if let aluno = alunos.first
// {
//   print(aluno)
// }

alunos.append("Andreison")
alunos += ["Dracula","Valquiria","Alfredo"]

// print(alunos)

// alunos.removeFirst()
// alunos.removeLast()
// alunos.remove(at: 2)

// print("\n",alunos)

// alunos.removeAll()

// if alunos.contains("Antonio")
// {
//   print("tem Antonio na turma")
// }
// else
// {
//   print("não tem Antonio na turma")
// }

// if !alunos.contains("Juliana")
// {
//   print("não tem Juliana na turma")
// }


// VÍDEO AULA Dicionário ###################################

var capitais = ["Japão":"Tokyo",
                "Italia":"Roma",
                "Portugal":"Lisboa",
                "Suíça":"Berna",
                "Argentina":"",
                "Brasil":"Brasília",
                "França":"Parí",]

// if let capital = capitais["França"]
// {
//   print(capital)
// }

capitais["Argentina"] = "Buenos Aires"
let valorAntigo = capitais.updateValue("París", forKey: "França")

// for element in capitais
// {
//   print(element)
// }

// print(Array(capitais.keys))
// print(Array(capitais.values))