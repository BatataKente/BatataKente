//
//  HomeController.swift
//  Correcao
//
//  Created by Josicleison Elves on 05/05/22.
//

import UIKit
import CoreData
import Alamofire

protocol HomeControllerProtocol: AnyObject
{
    func updateUser(_ valeu: String)
}

class HomeController
{
    var valeu:[Post] = [],
        value: Welcome = Welcome(slip: Slip(id: 0,
                                            advice: ""))
    weak var delegate: HomeControllerProtocol?
    
    func validateLogin(_ email: String,_ password: String) -> Bool {
    
        var users: [NSManagedObject] = []
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return false}
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Users")
        
        do
        {
            users = try managedContext.fetch(fetchRequest)
            for user in users
            {
                let storedemail = user.value(forKey: "email") as? String
                let storedPassword = user.value(forKey: "password") as? String
                
                if email == "" || password == ""
                {
                    return false
                }
                
                if storedemail != nil && storedPassword != nil
                {
                    if email == storedemail! && storedPassword! == password
                    {
                        delegate?.updateUser(email)
                        
                        return true
                    }
                }
            }
        }
        catch let error as NSError
        {
            print("Erro ao acessar dados. \(error)")
            return false
        }
        return false
    }
    
//    func makeRequest() -> String
//    {
//        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
//        var valeu: String?
//
//        let task = URLSession.shared.dataTask(with: url)
//        {(data, response, error) in
//            guard let responseData = data else {return}
//
//            do
//            {
//                let posts = try JSONDecoder().decode([Post].self, from: responseData)
//
//                let index = Int.random(in: 0..<posts.count)
//                valeu = posts[index].title
//            }
//            catch let error
//            {
//                print("o erro foi: \(error)")
//            }
//        }
//        task.resume()
//
//        if let valeu = valeu
//        {
//            print(valeu)
//            return valeu
//        }
//        return ""
//    }
    
    func anotherRequest(completion: @escaping (Bool, Error?) -> Void)
    {
        let url = "https://jsonplaceholder.typicode.com/posts"
        
        AF.request(url).responseJSON
        {response in
            if let data = response.data
            {
                do
                {
                    let result: [Post] = try JSONDecoder().decode([Post].self, from: data)
                    
                    self.valeu = result
                    
                    completion(true, nil)
                }
                catch
                {
                    completion(false, error)
                }
            }
        }
    }
    
    func againAnotherRequest(completion: @escaping (Bool, Error?) -> Void)
    {
        let url = "https://api.adviceslip.com/advice"
        
        AF.request(url).responseJSON
        {response in
            if let data = response.data
            {
                do
                {
                    let result: Welcome = try JSONDecoder().decode(Welcome.self, from: data)
                    
                    self.value = result
                    
                    completion(true, nil)
                }
                catch
                {
                    completion(false, error)
                }
            }
        }
    }
}
