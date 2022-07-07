//
//  Controller.swift
//  Calculo IMC
//
//  Created by Josicleison Elves on 18/05/22.
//

import Foundation

class Controller: ViewController
{
    func CalcularIMC(_ peso: String,_ altura: String) -> String
    {
        let imc = (Double(peso) ?? 0)/((Double(altura) ?? 0)*(Double(altura) ?? 0)),
            indice:String
        
        if !altura.contains(".")
        {
            indice = "Você digitou um valor inválido"
        }
        else
        {
            if imc < 18.5
            {
                indice = "Você está abaixo do peso"
            }
            else if imc < 25
            {
                indice = "Seu peso está normal"
            }
            else if imc < 30
            {
                indice = "Você está com sobrepeso"
            }
            else if imc < 35
            {
                indice = "Você está com obesidade grau I"
            }
            else if imc < 40
            {
                indice = "Você está com obesidade grau II"
            }
            else
            {
                indice = "Você está com obesidade morbida"
            }
        }
        
        return indice
    }
    
    func CalcularIMCImage(_ nome: String) -> String
    {
        let indice:String
        
        switch nome
        {
            case "Você está abaixo do peso":
                indice = "magreza"
            case "Seu peso está normal":
                indice = "abaixo"
            case "Você está com sobrepeso":
                indice = "ideal"
            case "Você está com obesidade grau I":
                indice = "sobre"
            case "Você está com obesidade grau II":
                indice = "sobre"
            default:
                indice = "obesidade"
        }

        return indice
    }
}

// #include <iostream>

// using namespace std;

// void linha()
// {
//     for(int i=1;i<=30;i++)
//     {
//         printf("-");
//     }
//         printf("\n");
// }

// void gordo()
// {
//     float imc,peso,altura;
//     string indice;
    
//     printf("qual e o seu peso? ");
//     scanf("%f",&peso);
    
//     printf("qual e sua altura? ");
//     scanf("%f",&altura);
    
//     printf("peso: %.1f kilogramas\naltura: %.1f metros\n",peso,altura);
    
//     imc=peso/(altura*altura);
    
//     if(imc<18.5)
//     {
//         indice="abaixo do peso";
//     }
//     else if(imc<25)
//     {
//         indice="peso normal";
//     }
//     else if(imc<30)
//     {
//         indice="sobrepeso";
//     }
//     else if(imc<35)
//     {
//         indice="obesidade grau I";
//     }
//     else if(imc<40)
//     {
//         indice="obesidade grau II";
//     }
//     else
//     {
//         indice="obesidade mórbida";
//     }
//     cout<<"\nindice de massa corporal: "<<indice<<"\n";
// }

// int main()
// {
//     linha();
//     gordo();
//     linha();
//     return 0;
// }
