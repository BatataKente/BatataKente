//
//  RegisterController.swift
//  Correcao
//
//  Created by Josicleison Elves on 05/05/22.
//

import UIKit
import CoreData
import Firebase

protocol RegisterProtocol: AnyObject
{
    func updateUser(_ value: NSManagedObject)
}

class RegisterController
{
    var auth = Auth.auth()
    
    func register(_ name:String,
                  _ lastName:String,
                  _ office:String,
                  _ email:String,
                  _ password:String)
    {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{return}
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Users", in: managedContext)!
        let person = NSManagedObject(entity: entity, insertInto: managedContext)
        
        person.setValue(name, forKey: "name")
        person.setValue(lastName, forKey: "lastName")
        person.setValue(office, forKey: "office")
        person.setValue(email, forKey: "email")
        person.setValue(password, forKey: "password")
        
        self.auth.createUser(withEmail: person.value(forKey: "email") as? String ?? "",
                             password: person.value(forKey: "password") as? String ?? "") { (result, error) in
            
            if error != nil {
                
                print("Falha ao cadastrar")
            }
            else {
                
                print("Sucesso ao cadastrar")
            }
        }
        
        do
        {
            try managedContext.save()
        }
        catch let error as NSError
        {
            print("Error ao salvar dados \(error)")
        }
    }
    
    func validateRegister(_ name:String,
                          _ lastName:String,
                          _ office:String,
                          _ email:String,
                          _ password:String) -> Bool
    {
        if name != "" &&
           lastName != "" &&
           office != "" &&
           email != "" &&
           password != ""
        {
            return true
        }
        return false
    }
    
    func validatePassword(_ password:String,
                          _ passwordConfirm:String) -> Bool
    {
        if password == passwordConfirm
        {
            return true
        }
        return false
    }
    
    func validateEmail(_ email:String) -> Bool
    {
        if email.contains("@") && email.contains(".")
        {
            return true
        }
        return false
    }
}

