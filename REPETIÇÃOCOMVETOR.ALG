Algoritmo "semnome"
// 
//  
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 05/08/2021
Var
// Se��o de Declara��es das vari�veis 
notas: vetor [1..5] de real
resultado: real
position: caractere
i: inteiro
soma: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
i <- 1
position <- "primeira"

Repita
      Se (i = 2) Entao
          position <- "segunda"
      Senao
          Se (i = 3) Entao
              position <- "terceira"
          Senao
              Se (i = 4) Entao
                  position <- "quarta"
              Senao
                  Se (i = 5) Entao
                      position <- "quinta"
                  Fimse
              Fimse
          Fimse
      Fimse
      
      Escreva("Digite sua ", position, " nota: ")
      Leia(notas[i])
      soma <- notas[i] + soma
      i <- i + 1
At� i > 5

resultado <- soma/5

Escreval("")
Escreval("Sua m�dia foi de:", resultado)



Fimalgoritmo