//
//  TableViewCell.swift
//  Desafio
//
//  Created by Josicleison Elves on 29/04/22.
//

import UIKit

class TableViewCell: UITableViewCell
{
    var registerController = RegisterController()
    
    @IBOutlet weak var storedUsername: UILabel!
    @IBOutlet weak var storedPassword: UILabel!
    @IBOutlet weak var storedName: UILabel!
    @IBOutlet weak var storedLastName: UILabel!
    @IBOutlet weak var storedEmail: UILabel!
    @IBOutlet weak var storedAge: UILabel!
    @IBOutlet weak var storedPhone: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    
    var batata = " esparrama pelo cháo"
    
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        storedUsername.text = "Username: \(registerController.user[0].login)"
        storedUsername.text = "Username: " + registerController.user[0].login
        storedPassword.text = "Password: \(registerController.user[0].password)"
        storedName.text = "Nome: \(registerController.user[0].name ?? "")"
        storedLastName.text = "Sobrenome: \(registerController.user[0].lastName ?? "")"
        storedEmail.text = "Email: \(registerController.user[0].email ?? "")"
        storedAge.text = "Idade: \(registerController.user[0].age ?? "")"
        storedPhone.text = "Telefone: \(registerController.user[0].phone ?? "")"
        
        super.setSelected(selected, animated: animated)
    }
    
}
