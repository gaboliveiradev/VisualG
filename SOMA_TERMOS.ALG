Algoritmo "SOMA_TERMOS"
// Disciplina   : T�cnicas de Programa��o e Algoritmos
// Professor   : Tiago Antonio da Silva 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 09/06/2021
Var
// Se��o de Declara��es das vari�veis
numero_digitado, soma:real
termos, i:inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
Escreval("Quantos n�meros voc� quer somar?")
Leia(termos)

soma <- 0

para i de 1 at� termos faca
   Escreval("Digite o n�mero da ", i, "� vez:")
   Leia(numero_digitado)
   soma <- soma + numero_digitado
fimpara

Escreval("A soma dos ", termos, " termos � ", soma)

Fimalgoritmo