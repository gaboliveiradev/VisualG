Algoritmo "semnome"
//  
//  
// Disciplina   : T�cnicas de Programa��o e Algoritmos
// Professor   : Tiago Antonio da Silva 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/07/2021
Var
// Se��o de Declara��es das vari�veis 
nome1, nome2, nome3, nome4 : caractere

pessoas : vetor [1..10] de caractere

posicao : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
pessoas[1] <- "Thiago"
pessoas[2] <- "Pablo"
pessoas[3] <- "Andr�"
pessoas[4] <- "Bruno"
pessoas[5] <- "Isabella"

//Escreval("A pessoa da posi��o 2 � ", pessoas[2])

//Escreval("Qual posi��o voc� quer ver? ")
//Leia(posicao)

//Escreval("O valor da posi��o ", posicao, " � ", pessoas[posicao])


// Preenchendo o vetor
Para posicao de 1 at� 10 Fa�a
   Escreval("Digite o nome para a posi��o ", posicao, "�")
   Leia(pessoas[posicao])
Fimpara


// Mostrando todos os valores do vetor.
Para posicao de 1 at� 10 Faca
   Escreval("O valor da posi��o ", posicao, " � ", pessoas[posicao])
Fimpara

Fimalgoritmo