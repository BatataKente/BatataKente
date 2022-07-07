//
//  ViewController.swift
//  Calculo IMC
//
//  Created by Josicleison Elves on 18/05/22.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var alturaTextField: UITextField!
    @IBOutlet weak var pesoTextField: UITextField!
    
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var resultadoImage: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func signInDone(_ sender: UIButton)
    {
        let controller = Controller()
        resultadoLabel.text = controller.CalcularIMC(pesoTextField.text ?? "",
                                                     alturaTextField.text ?? "")
        
        resultadoImage.image = UIImage(named: controller.CalcularIMCImage(resultadoLabel.text ?? ""))
    }
}
