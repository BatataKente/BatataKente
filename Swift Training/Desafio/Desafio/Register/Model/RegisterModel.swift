//
//  RegisterModel.swift
//  Desafio
//
//  Created by Josicleison Elves on 06/05/22.
//

import Foundation

struct User: Codable
{
    var login:String
    var password:String
    var name:String?
    var lastName:String?
    var email:String?
    var age:String?
    var phone:String?
}

struct passaport
{
    let login:String = RegisterController().user[0].login.self
    let password:String = RegisterController().user[0].password.self
}

