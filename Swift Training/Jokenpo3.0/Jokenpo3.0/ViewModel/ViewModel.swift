//
//  ViewModel.swift
//  Jokenpo3.0
//
//  Created by Josicleison on 12/07/22.
//

import Foundation

class ViewModel {
    
    var scoreVictory = 0, scoreDraw = 0, scoreLose = 0
    
    var delegate: ViewModelProtocol?
    
    func Vitoria(_ playerTurn: Int,_ aiTurn: Int) -> Bool
    {
        switch playerTurn
        {
            case 0:
            if aiTurn == 3 || aiTurn == 2
            {
                return true
            }
            else
            {
                return false
            }
            case 1:
            if aiTurn == 0 || aiTurn == 4
            {
                return true
            }
            else
            {
                return false
            }
            case 2:
            if aiTurn == 3 || aiTurn == 1
            {
                return true
            }
            else
            {
                return false
            }
            case 3:
            if aiTurn == 1 || aiTurn == 4
            {
                return true
            }
            else
            {
                return false
            }
            default:
            if aiTurn == 0 || aiTurn == 2
            {
                return true
            }
            else
            {
                return false
            }
        }
    }
    
    func play(_ indexPath: IndexPath) {
        
        let cpuTurn = Int.random(in: 0...4)
        
        if Vitoria(indexPath.row, cpuTurn)
        {
            delegate?.updateResult("You Win")
            scoreVictory += 1
        }
        else if indexPath.row == cpuTurn
        {
            delegate?.updateResult("Draw!!")
            scoreDraw += 1
        }
        else
        {
            delegate?.updateResult("You Lose..")
            scoreLose += 1
        }
        
        delegate?.updateLabels(String(scoreVictory), String(scoreDraw), String(scoreLose))
        delegate?.updateImage(String(cpuTurn))
    }
}

protocol ViewModelProtocol {
    
    func updateResult(_ result: String)
    
    func updateLabels(_ victory: String,
                      _ draw: String,
                      _ lose: String)
    
    func updateImage(_ cpuTurn: String)
}
