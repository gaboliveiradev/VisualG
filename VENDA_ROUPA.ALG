Algoritmo "semnome"
//  
//  
// 
//O dono da loja precisa desenvolver 1 algoritmo de venda de roupa conforme descritivo abaixo:
//1 � Digite o Nome do Cliente;
//2 � M�dulo Venda
//    - Digite o nome da roupa, quantidade e valor unit�rio da roupa;
//    - Acumule o valor da roupa vendida = (quantidade * valor unit�rio da roupa)
//    - Mostre o valor da roupa vendida
//    - Mostra a mensagem �Deseja vender outra roupa (S/N) �
//    - Se SIM continue no m�dulo venda e vendendo mais roupa.
//    - Crie um acumulador de venda total = venda total + Valor da roupa vendida
//    - Se N�o � entre no m�dulo pagamento
//3 � M�dulo Pagamento
//    - Apresente o valor Venda total
//    - Entre com o valor em dinheiro do cliente
//    - Calcule o troco = dinheiro do cliente � Venda Total
//Apresente a Msg � Obrigado � Volte Sempre.

Var
nome_cliente, nome_roupa, option: caracter
quantidade_roupa, valor_roupa_un, valor_roupa_vendida, venda_total, dinheiro_do_cliente, troco: real
j: inteiro

Inicio

Escreval("+-------------------------------+")
Escreval("| Seja Bem Vindo a Outlet014 <3 |")
Escreval("+-------------------------------+")
Escreval("")
Escreva("  Digite o nome do cliente: ")
Leia(nome_cliente)

j <- 0
Repita
    Escreva("  Digite o nome da roupa: ")
    Leia(nome_roupa)
    Escreva("  Digite a quantidade de pe�as: ")
    Leia(quantidade_roupa)
    Escreva("  Digite o valor unit�rio da roupa: ")
    Leia(valor_roupa_un)
    valor_roupa_vendida <- (quantidade_roupa * valor_roupa_un)
    Escreval("Voc� vendeu", quantidade_roupa, " ", nome_roupa, " no valor de: R$" , valor_roupa_vendida, " Reais")
    Escreval(" ")
    venda_total <- (venda_total + valor_roupa_vendida)
    Escreva("Deseja vender outra roupa (S/N): ")
    Leia(option)
    
    Se (option = "S") ou (option = "s") Entao
        j <- 0
    Fimse
    
    Se (option = "N") ou (option = "n") Entao
        Escreval("+------------------------------------------------------------+")
        Escreval("O valor total de venda � de: R$", venda_total:2:2, " Reais")
        Escreval("+------------------------------------------------------------+")
        
        Repita
            Escreva("Digite o dinheiro recebido do cliente: ")
            Leia(dinheiro_do_cliente)
            Escreval("")
            Se (dinheiro_do_cliente < venda_total) Entao
                Escreval("+-------------------------------------------------------+")
                Escreval("Esse valor n�o corresponde ao valor total das roupas.")
                Escreval("+-------------------------------------------------------+")
            Fimse
            
            Se (dinheiro_do_cliente > venda_total) Entao
                troco <- (dinheiro_do_cliente - venda_total)
                Escreval("+--------------------------------------------------+")
                Escreval("O seu troco � de: R$", troco:2:2, " Reais")
                Escreval("+--------------------------------------------------+")
            Fimse

        Ate dinheiro_do_cliente >= venda_total
        j <- 2
         
    Fimse
    
Ate j > 1

Escreval("")
Escreval("Outlet014 agrade�e a sua compra, volte sempre <3")
Escreval("")

Fimalgoritmo