//
//  RegisterView.swift
//  Correcao
//
//  Created by Josicleison Elves on 05/05/22.
//

import UIKit
import CoreData

class RegisterView: UIViewController
{
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldLastName: UITextField!
    @IBOutlet weak var textFieldOffice: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldPasswordConfirm: UITextField!
    
    @IBOutlet weak var registerFailLabel: UILabel!
    
//    var users: [NSManagedObject] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
//    override func viewWillAppear(_ animated: Bool)
//    {
//        super.viewWillAppear(animated)
//
//        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{return}
//
//        let managedContext = appDelegate.persistentContainer.viewContext
//        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Users")
//
//        do
//        {
//            users = try managedContext.fetch(fetchRequest)
//        }
//        catch let error as NSError
//        {
//            print("Error ao acessar dados \(error)")
//        }
//    }
    
    @IBAction func buttonRegister(_ sender: UIButton)
    {
        let registerController = RegisterController()
        let homeController = HomeController()
        
        if !homeController.validateLogin(textFieldEmail.text ?? "",
                                         textFieldPassword.text ?? "")
        {
            if registerController.validateRegister(textFieldName.text ?? "",
                                                   textFieldLastName.text ?? "",
                                                   textFieldOffice.text ?? "",
                                                   textFieldEmail.text ?? "",
                                                   textFieldPassword.text ?? "")
            {
                if registerController.validateEmail(textFieldEmail.text ?? "")
                {
                    if registerController.validatePassword(textFieldPassword.text ?? "",
                                                           textFieldPasswordConfirm.text ?? "")
                    {
                        registerController.register(textFieldName.text ?? "",
                                                    textFieldLastName.text ?? "",
                                                    textFieldOffice.text ?? "",
                                                    textFieldEmail.text ?? "",
                                                    textFieldPassword.text ?? "")
                        registerFailLabel.isHidden = true
                        dismiss(animated: true)
                    }
                    else
                    {
                        registerFailLabel.text = "A senhas não conferem"
                        registerFailLabel.isHidden = false
                    }
                }
                else
                {
                    registerFailLabel.text = "Digite um email válido"
                    registerFailLabel.isHidden = false
                }
            }
            else
            {
                registerFailLabel.text = "Todos os campos precisam ser preenchidos"
                registerFailLabel.isHidden = false
            }
        }
        else
        {
            registerFailLabel.text = "Este email já existe"
            registerFailLabel.isHidden = false
        }
    }
    
    @IBAction func backButton(_ sender: UIButton)
    {
        textFieldName.text = ""
        textFieldLastName.text = ""
        textFieldOffice.text = ""
        textFieldEmail.text = ""
        textFieldPassword.text = ""
        textFieldPasswordConfirm.text = ""

        registerFailLabel.isHidden = true
        
        dismiss(animated: true)
    }
}
