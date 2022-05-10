import UIKit

class ViewController: UIViewController
{
//Dados para login:
    @IBOutlet weak var cpf: UITextField!
    @IBOutlet weak var senha: UITextField!
    
//Botao de entrar:
    @IBOutlet weak var entrar: UIButton!
    
//Resposta:
    @IBOutlet weak var resposta: UILabel!

    var cpfText = ""
    var senhaText = ""
  
    override func viewDidLoad()
    {
        super.viewDidLoad()
        resposta.isHidden = true
    }
    
    @IBAction func efetuarLogin(_ sender: Any)
    {
        resposta.isHidden = false
        
        print(cpfText)
        print(senhaText)
    }
}

