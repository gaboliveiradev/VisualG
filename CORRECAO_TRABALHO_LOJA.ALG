Algoritmo "semnome"
// Disciplina   : T�cnicas de Programa��o e Algoritmos
// Professor   : Tiago Antonio da Silva 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a)
// Data atual  : 22/07/2021

//Desenvolva 1 algoritmo para Loja de Roupa � Vendas
//O dono de uma loja precisa desenvolver 1 algoritmo de venda de roupa conforme
//descritivo abaixo:
//1 � Digite o Nome do Cliente
//2 � M�dulo Venda:

//- Digite o nome da roupa, quantidade e valor unit�rio da roupa
//- Acumule o valor da roupa vendida = (quantidade * valor unit�rio da roupa)
//- Mostre o valor da roupa vendida
//- Mostra a mensagem �Deseja vender outra roupa (S/N) �
//- Se SIM continue no m�dulo venda e vendendo mais roupa.
//- Crie um acumulador de venda total = venda total + Valor da roupa vendida
//- Se N�o � entre no m�dulo pagamento

//3 � M�dulo Pagamento:
//- Apresente o valor Venda total
//- Entre com o valor em dinheiro do cliente
//- Calcule o troco = dinheiro do cliente � Venda Total
//Apresente a Msg � Obrigado � Volte Sempre.




Var
// Se��o de Declara��es das vari�veis 
nome, nome_roupa, add_mais_produtos : caractere
valor_roupa_vendida, valor_unitario, valor_total_compra, pgto_cliente, troco : real
quantidade : inteiro

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 

Escreval("Bem vindo ao EtecStore")
Escreval("Qual � o nome do cliente?")
Leia (nome)

valor_total_compra <- 0

Repita
   Escreva("Qual � a roupa?")
   Leia (nome_roupa)
   Escreva("Qual � o valor unit�rio da pe�a de roupa?")
   Leia (valor_unitario)
   Escreva("Qual � a quantidade?")
   Leia (quantidade)
   
   valor_roupa_vendida <- valor_unitario * quantidade
   valor_total_compra <- valor_total_compra + valor_roupa_vendida
   
   Escreval("Deseja vender outra roupa (S/N)")
   Leia (add_mais_produtos)
   SE (add_mais_produtos = "n") ENT�O
       add_mais_produtos <- "N"
   FIMSE

At� (add_mais_produtos = "N")

Escreval("A compra ficou em: R$ ", valor_total_compra:2:2)

Escreva("Quanto o cliente pagou: ")
Leia(pgto_cliente)

Se (pgto_cliente > valor_total_compra) Ent�o
    troco <- pgto_cliente - valor_total_compra
    Escreval("Seu troco � de R$ ", troco:2:2)
Sen�o
   Se (pgto_cliente = valor_total_compra) Ent�o
       Escreval("Divida quitada")
   Sen�o
       Escreval("Pagamento insuficiente. Falta R$ ", valor_total_compra - pgto_cliente )
   Fimse
Fimse

Escreval("Obrigado, ", nome, " volte sempre.")







Escreval("Saiu do programa")

Fimalgoritmo