import Foundation

//#include <stdio.h>
//#include <conio.h>
//#include <stdlib.h>
//#include <string.h>
//#include <iostream>
//
//using namespace std;
//// Solicite o nome, e-mail, rg e cpf da pessoa. Faça uma validação simples para verificar se todos os campos foram preenchidos.
//
//
//void linha()
//{
//    printf("\n---------------------------------\n");
//}
//
//int main()
//{
//    char cpf[13],rg[11],nome[20],nascimento[10],email[20];
//    int i;
//    bool arroba=0,ponto=0;
//
//    printf("Informe o seu nome: ");
//    cin>>nome;
//
//    do
//    {
//        printf("Informe o seu e-mail: ");
//        cin>>email;
//
//        for(int i=0;i<strlen(email);i++)
//        {
//            if(email[i]=='@')
//            {
//                if(arroba)
//                {
//                    break;
//                }
//                arroba=1;
//            }
//            if(arroba)
//            {
//                if(email[i]=='.')
//                {
//                    ponto=1;
//                }
//            }
//        }
//        if(strlen(email)-1)
//        {
//            if(ponto==0&&arroba==0)
//            {
//                system("cls");
//            }
//        }
//    }
//    while(arroba==0&&ponto==0);
//
//    printf("Informe o cpf: ");
//
//    for(i=0;i<=13;i++)
//    {
//        if(i==3||i==7)
//        {
//            printf("%c",cpf[i]='.');
//        }
//        else if(i==11)
//        {
//            printf("%c",cpf[i]='-');
//        }
//        else
//        {
//            cpf[i]=getch();
//
//            if(cpf[i]=='0'||cpf[i]=='1'||cpf[i]=='2'||cpf[i]=='3'||cpf[i]=='4'||
//                   cpf[i]=='5'||cpf[i]=='6'||cpf[i]=='7'||cpf[i]=='8'||cpf[i]=='9')
//            {
//                printf("%c",cpf[i]);
//            }
//            else
//            {
//                i--;
//            }
//        }
//    }
//
//    printf("\nInforme o rg: ");
//
//    for(int i=0;i<=11;i++)
//    {
//        if(i==2||i==6)
//        {
//            printf("%c",rg[i]='.');
//        }
//        else if(i==10)
//        {
//            printf("%c",rg[i]='-');
//        }
//        else
//        {
//            rg[i]=getch();
//
//            if(rg[i]=='0'||rg[i]=='1'||rg[i]=='2'||rg[i]=='3'||rg[i]=='4'||
//                rg[i]=='5'||rg[i]=='6'||rg[i]=='7'||rg[i]=='8'||rg[i]=='9')
//            {
//                printf("%c",rg[i]);
//            }
//            else
//            {
//                i--;
//            }
//        }
//    }
//
//    printf("\nInforme sua data de nascimento: ");
//
//    for(i=0;i<=9;i++)
//    {
//        if(i==2||i==5)
//        {
//            printf("%c",nascimento[i]='/');
//        }
//        else
//        {
//            nascimento[i]=getch();
//
//            if(nascimento[i]=='0'||nascimento[i]=='1'||nascimento[i]=='2'||nascimento[i]=='3'||nascimento[i]=='4'||
//                nascimento[i]=='5'||nascimento[i]=='6'||nascimento[i]=='7'||nascimento[i]=='8'||nascimento[i]=='9')
//            {
//                printf("%c",nascimento[i]);
//            }
//            else
//            {
//                i--;
//            }
//        }
//    }
//    nascimento[i]='\0';
//
//    system("cls");
//
//    linha();
//    printf("Nome: %s\nEmail: %s\nCpf: %s\nRg: %s\nData de nascimento: %s",nome,email,cpf,rg,nascimento);
//    linha();
//
//    printf("\n");
//    system("pause");
//    return 0;
//}

func linha()
{
    print("\n---------------------------------\n")
}

func Ok()
{
    print("OK")
}


struct User
{
    var nome:String?
    var cpf:String
    var rg:String
    var email:String
    var nascimento:String
}


class Master
{
    var user: [User] = [User(nome: "",cpf:"",
                             rg:"",email:"",
                             nascimento:"")]
  
    func Cadastro()
    {
       var validacao:Bool = true
      
       repeat
       { 
           print("Insira o seu nome completo: ")
           if var value = user[0].nome
           {
               value = readLine() ?? ""
               if value.contains(" ")
               {
                   validacao = false
               }
           }
       }
       while validacao

       // print("Insira o seu cpf: ")
       // user[0].cpf = readLine() ?? ""

       // print("Insira o seu rg: ")
       // user[0].rg = readLine() ?? ""
      
       // print("Insira o seu email: ")
       // user[0].email = readLine() ?? ""
      
       // print("Insira a sua data de nascimento: DDMMAAAA")
       // user[0].nascimento = readLine() ?? ""
//
//        Ok()
    }
    
}

//Master().Cadastro(readLine() ?? "")

// print("Insira o seu nome: ")
// var user: [User] = [User(nome: "")]

Master().Cadastro()