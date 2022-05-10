import Foundation

func linha()
{
  print("\n---------------------------------\n")
}

//CLASSES

//HERANÇA

//ENCAPSULAMENTO

//POLIMORFISMO

class Veiculo
{
  var velocidade:Double
  var aceleracao:Double
  var velocidadeMaxima:Double = 300
  var combustivel:Double

  init(combustivel:Double)
  {
    self.combustivel = combustivel
    self.velocidade = 0
    self.aceleracao = 0
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
}

var uno = Veiculo(combustivel: 10)

uno.locomover(distancia: 10)
print(uno.combustivel)

uno.locomover(distancia: 10)
print(uno.combustivel)

linha()

struct User
{
  var login:String
  var password:String
  var name:String?
  var lastName:String?
  var email:String?
  var age:String?
  var phone:String?
}

class RegisterController
{
    var user: [User] = []

    init (user: [User] = [])
    {
        self.user = user
    }
  
    func Cadastrar(login:String, password:String, name:String, lastName:String, email:String, age:String, phone:String)
    {
        let login = login,
            password = password,
            name = name,
            lastName = lastName,
            email = email,
            age = age,
            phone = phone
        
        if login != "" && password != "" && name != "" && lastName != "" && email != "" && age != "" && phone != ""
        {
            user.append(User(login: login, password: password, name: name, lastName: lastName, email: email, age: age, phone: phone))
        }
        else
        {
            print("falha ao cadastrar")
        }
    }
}

var registerController = RegisterController()

registerController.Cadastrar(login:"123", password:"123", name:"123", lastName:"123", email:"123", age:"123", phone:"123")
registerController.Cadastrar(login:"321", password:"321", name:"321", lastName:"321", email:"321", age:"321", phone:"321")

print(registerController.user)