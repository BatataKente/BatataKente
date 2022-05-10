import Foundation

//0 é pedra;1 é papel;2 é tesoura 

let valeu:UInt?
let cpu=UInt.random(in:0...2)

var score:UInt=0

valeu=1

print("jogador: ",valeu)
print("cpu: ",cpu)

if let jogador = valeu
{
  if jogador == 0 && cpu==2 || jogador == 1 && cpu == 0 || jogador == 2 && cpu == 1
  {
    print("Voce venceu!\n");
    score+=1
  }
  else if (jogador == cpu) 
  {
    print("Empate!\n");
  }
  else
  {
    print("CPU venceu!\n");
  }
}