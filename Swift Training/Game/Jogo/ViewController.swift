import UIKit

class ViewController: UIViewController
{
// Botoes:
    @IBOutlet weak var stone: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var lizard: UIButton!
    @IBOutlet weak var spok: UIButton!

// Placar:
    @IBOutlet weak var displayResult: UILabel!
    
    @IBOutlet weak var vitorias: UILabel!
    @IBOutlet weak var empates: UILabel!
    @IBOutlet weak var derrotas: UILabel!
    
// Ring:
    @IBOutlet weak var player: UIImageView!
    @IBOutlet weak var ai: UIImageView!
    
    var scoreVictory=0, scoreDraw=0, scoreLoses=0
    
    var aiTurn:Int?
    var playerTurn:Int?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        vitorias.text = "0"
        empates.text = "0"
        derrotas.text = "0"
        
        displayResult.text = "faça a sua jogada"
    }
    
    @IBAction func stoneChose(_ sender: Any)
    {
        playerTurn = 1
        player.image = UIImage(named: "Pedra")
        result()
    }
    
    @IBAction func paperChose(_ sender: Any)
    {
        playerTurn = 2
        player.image = UIImage(named: "Papel")
        result()
    }
    
    @IBAction func scissorsChose(_ sender: Any)
    {
        playerTurn = 3
        player.image = UIImage(named: "Tesoura")
        result()
    }
    
    @IBAction func lizardChose(_ sender: Any)
    {
        playerTurn = 4
        player.image = UIImage(named: "Lagarto")
        result()
    }
    
    @IBAction func spokChose(_ sender: Any)
    {
        playerTurn = 5
        player.image = UIImage(named: "Vulcan Salute")
        result()
    }
    
    func result()
    {
        aiTurn = Int.random(in:1...5)
        switch aiTurn
        {
            case 1:
                ai.image = UIImage(named: "Pedra")
            break
            case 2:
                ai.image = UIImage(named: "Papel")
            break
            case 3:
                ai.image = UIImage(named: "Tesoura")
            break
            case 4:
                ai.image = UIImage(named: "Lagarto")
            break
            default:
                ai.image = UIImage(named: "Vulcan Salute")
        }
        
        if playerTurn == 1 && aiTurn == 3
        {
            displayResult.text = "Voce venceu!"
            scoreVictory += 1
            vitorias.text = String(scoreVictory)
        }
        else if playerTurn == 1 && aiTurn == 4
        {
            displayResult.text = "Voce venceu!"
            scoreVictory += 1
            vitorias.text = String(scoreVictory)
        }
        else if playerTurn == 2 && aiTurn == 1
        {
            displayResult.text = "Voce venceu!"
            scoreVictory += 1
            vitorias.text = String(scoreVictory)
        }
        else if playerTurn == 2 && aiTurn == 5
        {
            displayResult.text = "Voce venceu!"
            scoreVictory += 1
            vitorias.text = String(scoreVictory)
        }
        else if playerTurn == 3 && aiTurn == 2
        {
            displayResult.text = "Voce venceu!"
            scoreVictory += 1
            vitorias.text = String(scoreVictory)
        }
        else if playerTurn == 3 && aiTurn == 4
        {
            displayResult.text = "Voce venceu!"
            scoreVictory+=1
            vitorias.text = String(scoreVictory)
        }
        else if playerTurn == 4 && aiTurn == 2
        {
            displayResult.text = "Voce venceu!"
            scoreVictory += 1
            vitorias.text = String(scoreVictory)
        }
        else if playerTurn == 4 && aiTurn == 5
        {
            displayResult.text = "Voce venceu!"
            scoreVictory += 1
            vitorias.text = String(scoreVictory)
        }
        else if playerTurn == 5 && aiTurn == 3
        {
            displayResult.text = "Voce venceu!"
            scoreVictory += 1
            vitorias.text = String(scoreVictory)
        }
        else if playerTurn == 5 && aiTurn == 1
        {
            displayResult.text = "Voce venceu!"
            scoreVictory += 1
            vitorias.text = String(scoreVictory)
        }
// Empates ou derrotas:
        else if playerTurn == aiTurn
        {
            displayResult.text = "Empatou!"
            scoreDraw += 1
            empates.text = String(scoreDraw)
        }
        else
        {
            displayResult.text = "Voce perdeu"
            scoreLoses += 1
            derrotas.text = String(scoreLoses)
        }
    }
}

