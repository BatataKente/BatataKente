//
//  RegisterController.swift
//  Desafio
//
//  Created by Josicleison Elves on 06/05/22.
//

import Foundation

class RegisterController
{
//    let defaults = UserDefaults.standard
//
//    var user: [User] = []
    
    var user: [User] = [User (login: "123", password:"123", name:"123", lastName:"123", email:"123", age:"123", phone: "123")]
    
    
//    let encoder = JSONEncoder()
    
    
//    var store = UserDefaults.standard.stringArray(forKey: "tarefas") ?? []
    
    private var store = [User]()
    
//    init (user: [User] = [])
//        {
//            self.user = user
//        }
    
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
            user.append(User.init(login: login, password: password, name: name, lastName: lastName, email: email, age: age, phone: phone))
            
//            if let encoded = try? encoder.encode(user)
//            {
//                let defaults = UserDefaults.standard
//                defaults.set(encoded, forKey: "SavedPerson")
//            }
            
//            UserDefaults.standard.setValue(self.user, forKey: "tarefas")
            
            store += user
            print(store)
        }
        else
        {
            print("falha ao cadastrar")
        }
    }
}

