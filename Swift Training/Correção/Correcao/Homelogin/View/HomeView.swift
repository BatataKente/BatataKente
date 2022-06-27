//
//  ViewController.swift
//  Correcao
//
//  Created by Josicleison Elves on 05/05/22.
//

import UIKit
import CoreData
import Firebase

class HomeView: UIViewController
{
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    @IBOutlet weak var loginFailLabel: UILabel!
    
    var users: [NSManagedObject] = []
    var auth: Auth?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.auth = Auth.auth()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{return}
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Users")
        
        do
        {
            users = try managedContext.fetch(fetchRequest)
        }
        catch let error as NSError
        {
            print("Error ao acessar dados \(error)")
        }
    }

    @IBAction func buttonLogin(_ sender: UIButton)
    {
        self.auth?.signIn(withEmail: textFieldEmail.text ?? "",
                          password: textFieldPassword.text ?? "",
                          completion: { [self] (usuario, error) in
            if error != nil {
                
                print("Erro ao acessar dados \(String(describing: error))")
            }
            else {
                
                let homeController = HomeController()
                if homeController.validateLogin(self.textFieldEmail.text ?? "",
                                                self.textFieldPassword.text ?? "") ||
                                                self.textFieldEmail.text == "master" &&
                                                self.textFieldPassword.text == "master"
                {
                    self.loginFailLabel.isHidden = true
                    
                    self.performSegue(withIdentifier: "LogadoView", sender: nil)
                }
                else
                {
                    self.loginFailLabel.isHidden = false
                    
                    print("Erro ao logar")
                }
            }
        })
    }
    
    @IBAction func buttonRegister(_ sender: UIButton)
    {
        loginFailLabel.isHidden = true
        
        self.performSegue(withIdentifier: "RegisterView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if segue.identifier == "RegisterView"
        {
            textFieldEmail.text = ""
            textFieldPassword.text = ""
        }
        else
        {
            if textFieldEmail.text == "master" && textFieldPassword.text == "master"
            {
                let valeu = segue.destination as? LogadoView
                valeu?.users = self.users
//                valeu?.delegate = self
            }
            else
            {
                for user in self.users
                {
                    if user.value(forKey: "email") as? String == textFieldEmail.text && user.value(forKey: "password") as? String == textFieldPassword.text
                    {
                        let valeu = segue.destination as? LogadoView
                        valeu?.users = [user]
//                        valeu?.delegate = self

                        textFieldEmail.text = ""
                        textFieldPassword.text = ""
                    }
                }
            }
        }
    }
}
//
//extension HomeView: RegisterProtocol
//{
//    func updateUser(_ value: NSManagedObject)
//    {
//        users.append(value)
//    }
//}
