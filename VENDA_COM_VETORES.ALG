Algoritmo "VENDA_COM_VETORES"
//  
//  
//Desenvolva 1 algoritmo para Loja de Roupa � Vendas
//O dono de uma loja precisa desenvolver 1 algoritmo de venda de roupa conforme descritivo abaixo:
//1 � Digite o Nome do Cliente

//2 � M�dulo Venda:
//- Digite o nome da roupa, quantidade e valor unit�rio da roupa, armazene essas informa��es em vetores para que a lista de itens do pedido possa ser mostrada depois.
//- Acumule o valor da roupa vendida = (quantidade * valor unit�rio da roupa)
//- Mostre o valor da roupa vendida
//- Mostra a mensagem �Deseja vender outra roupa (S/N) �
//- Se SIM continue no m�dulo venda e vendendo mais roupa.
//- Crie um acumulador de venda total = venda total + Valor da roupa vendida
//- Se N�o � entre no m�dulo pagamento

//3 � M�dulo Pagamento:
//- Apresente os itens inseridos.
//- Apresente o valor Venda total.
//- Entre com o valor em dinheiro do cliente.
//- Calcule o troco = dinheiro do cliente � Venda Total.
//Apresente a Msg � Obrigado � Volte Sempre.


// | | | | | | | | | | | | | | | | | | | | | | | | | | | | | | |
// V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V
// ==============================================================
// Professor, quando for testar no console usa em tela cheia.
// Quando eu tava testando na tela padr�o que ele vem, as vezes
// dava uns bugs nas linhas.
// ==============================================================

Var
// Se��o de Declara��es das vari�veis
nome_cliente, add_produtos, option, confirmacao : caractere
i : inteiro
nome_roupas : vetor [1..10] de caractere
valor_unit, qnt_roupas : vetor [1..10] de real
valor_roupa_vendida, venda_total, pgto_cliente, troco_cliente, falta_pagar : real

numero_cartao, cvc_cartao: real

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
ESCREVA("Digite o nome do cliente: ")
LEIA(nome_cliente)

i <- 1

REPITA
    ESCREVA("Digite o nome da roupa: ")
    LEIA(nome_roupas[i])
    ESCREVA("Digite o valor unit�rio: R$")
    LEIA(valor_unit[i])
    ESCREVA("Digite a quantidade de roupa: ")
    LEIA(qnt_roupas[i])
    
    i <- i + 1
    ESCREVA("Deseja vender outra roupa (S/N): ")
    LEIA(add_produtos)
    
    SE (add_produtos = "n") ENT�O
        add_produtos <- "N"
    FIMSE
    ESCREVAL("")
AT� (add_produtos = "N")

i <- i - 1

ESCREVAL("")
ESCREVAL("==== HIST�RICO DE COMPRAS ====")
REPITA
    valor_roupa_vendida <- (qnt_roupas[i] * valor_unit[i])
    ESCREVAL("Nome da pe�a: ", nome_roupas[i])
    ESCREVAL("Pre�o por pe�a: R$", valor_unit[i]:2:2)
    ESCREVAL("Quantidade: ", qnt_roupas[i])
    ESCREVAL("Valor total: R$", valor_roupa_vendida:2:2)
    ESCREVAL("")
    i <- i - 1
    venda_total <- venda_total + valor_roupa_vendida
AT� (i = 0)

ESCREVAL("==== FA�A SEU PAGAMENTO ====")
ESCREVAL("Valor total da compra: R$", venda_total:2:2)
ESCREVA("Dinheiro do cliente: R$ ")
LEIA(pgto_cliente)

SE (pgto_cliente < venda_total) ENT�O

    falta_pagar <- (venda_total - pgto_cliente)
    ESCREVA("Ainda falta R$", falta_pagar:2:2, ", deseja passar essa quantia no cart�o (S/N): ")
    LEIA(option)
    
    SE (option = "s") ou (option = "S") ENT�O
        ESCREVAL("")
        ESCREVAL("==== MAQUININHA DE CART�O ====")
        ESCREVA("Digite o n�mero do seu cart�o: ")
        LEIA(numero_cartao)
        ESCREVA("Digite o c�digo de seguran�a: ")
        LEIA(cvc_cartao)
        ESCREVAL("")
        
        ESCREVAL("==== CONFIRMA��O DE PAGAMENTO ====")
        ESCREVAL("Valor a passar no cart�o: R$", falta_pagar:2:2)
        ESCREVAL("N�mero do cart�o: ", numero_cartao)
        ESCREVAL("C�digo de seguran�a: ", cvc_cartao)
        ESCREVA("Digite CONFIRMAR para confirmar seu pagamento:")
        LEIA(confirmacao)
        
        SE(confirmacao = "CONFIRMAR") ou (confirmacao = "confirmar") ENTAO
            ESCREVAL("")
            ESCREVAL("Pagamento realizado com sucesso")
        SENAO
            ESCREVAL("")
            ESCREVAL(nome_cliente, " infelizmente seu pagamento foi recusado, e voc� foi adicionado automaticamente a nossa lista de devedores.") // N�o pensei em um nome melhor ;-;
        FIMSE
            
    SENAO
        ESCREVAL("")
        ESCREVAL(nome_cliente, " voc� foi adicionado com sucesso a nossa lista de devedores.")// N�o pensei em um nome melhor ;-;
    FIMSE
SENAO
    troco_cliente <- (pgto_cliente - venda_total)
    ESCREVAL("Troco do cliente: R$", troco_cliente:2:2)
FIMSE
ESCREVAL("")
ESCREVAL("Obrigado, volte sempre!")


Fimalgoritmo