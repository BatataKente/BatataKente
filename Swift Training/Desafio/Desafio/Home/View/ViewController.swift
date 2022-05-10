//
//  ViewController.swift
//  Desafio
//
//  Created by Josicleison Elves on 4/28/22.
//
import UIKit

class ViewController: UIViewController
{
    var loginController = LoginController()
    
    @IBOutlet weak var loginFail: UILabel!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func signInButton(_ sender: UIButton)
    {
        self.performSegue(withIdentifier: "RegisterScreen", sender: nil)
    }
    
    @IBAction func loginButton(_ sender: UIButton)
    {
        if usernameTextField.text != "" && passwordTextField.text != "" && loginController.Login(login: usernameTextField.text ?? "", password: passwordTextField.text ?? "")
        {
            self.performSegue(withIdentifier: "PersonalData", sender: nil)
        }
        else
        {
            print("falha na tentativa de login")
            
            loginFail.isHidden = false
        }
    }
}
