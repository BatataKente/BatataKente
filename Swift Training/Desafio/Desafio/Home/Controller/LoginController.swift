//
//  LoginController.swift
//  Desafio
//
//  Created by Josicleison Elves on 06/05/22.
//

import Foundation

class LoginController: RegisterController
{
    private var defaults = UserDefaults.standard
    
    func Login(login:String, password:String) -> Bool
    {
        let login = login,
            password = password
        
//        if let savedPerson = defaults.object(forKey: "SavedPerson") as? Data
//        {
//            let decoder = JSONDecoder()
//            if let loadedPerson = try? decoder.decode(User.self, from: savedPerson)
//            {
//                print(loadedPerson.name ?? "")
//            }
//        }
        
        for users in user
        {
            if users.login == login && users.password == password
            {
                return true
            }
        }
        return false
    }
}
 
