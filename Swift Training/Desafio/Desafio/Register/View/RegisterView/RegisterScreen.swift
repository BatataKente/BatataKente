//
//  RegisterScreen.swift
//  Desafio
//
//  Created by user218968 on 4/28/22.
//
import UIKit

class RegisterScreen: UIViewController
{
    var registerController = RegisterController()
    
    @IBOutlet weak var signInUserName: UITextField!
    @IBOutlet weak var signInName: UITextField!
    @IBOutlet weak var signInLastName: UITextField!
    @IBOutlet weak var signInPassword: UITextField!
    @IBOutlet weak var signInConfirmPassword: UITextField!
    @IBOutlet weak var signInEmail: UITextField!
    @IBOutlet weak var signInAge: UITextField!
    @IBOutlet weak var signInPhone: UITextField!
    
    @IBOutlet weak var signInFail: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func signInDone(_ sender: UIButton)
    {
        if signInPassword.text == signInConfirmPassword.text
        {
            self.registerController.Cadastrar(login: signInUserName.text ?? "",
                                                password: signInPassword.text ?? "",
                                                name: signInName.text ?? "",
                                                lastName: signInLastName.text ?? "",
                                                email: signInEmail.text ?? "",
                                                age: signInAge.text ?? "",
                                                phone: signInPhone.text ?? "")
            
            self.performSegue(withIdentifier: "RegisterScreenReturn", sender: nil)
            
//            print(registerController.user)
        }
        else
        {
            signInFail.isHidden = false
        }
    }
}
