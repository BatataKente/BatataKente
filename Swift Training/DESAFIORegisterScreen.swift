import UIKit

struct User
{
    var userLoginPassword:[String:String] = [:]
    var name:[String] = []
    var lastName:[String] = []
    var email:[String] = []
    var age:[String] = []
    var phone:[String] = []
}

class RegisterScreen: UIViewController
{
    var cadastro = User(userLoginPassword:["":""],name:[""],lastName:[""],email:[""],age:[""],phone:[""])
    
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
            cadastro.userLoginPassword[signInUserName.text ?? ""] = signInPassword.text ?? ""
            cadastro.name.append(signInName.text ?? "")
            cadastro.lastName.append(signInLastName.text ?? "")
            cadastro.email.append(signInEmail.text ?? "")
            cadastro.age.append(signInAge.text ?? "")
            cadastro.phone.append(signInPhone.text ?? "")
            
            self.performSegue(withIdentifier: "RegisterScreenReturn", sender: nil)
        }
        else
        {
            signInFail.isHidden = false
        }
    }
}
