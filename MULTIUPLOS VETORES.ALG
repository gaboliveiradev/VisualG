Algoritmo "semnome"
// Disciplina   : T�cnicas de Programa��o e Algoritmos
// Professor   : Tiago Antonio da Silva 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 29/07/2021
Var
// Se��o de Declara��es das vari�veis 
pessoas: vetor [1..5] de caracter
idades: vetor[1..5] de inteiro

i : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

Para i de 1 at� 5 Fa�a
   Escreval("Informe os dados da posi��o ", i)
   
   Escreval("Qual � o nome?")
   Leia(pessoas[i])
   
   Escreval("Qual � a idade?")
   Leia(idades[i])
Fimpara


Fimalgoritmo