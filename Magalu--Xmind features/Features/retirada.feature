#Language: pt

Funcionalidade: Retirada do Produto 
    Eu como usuário desejo
    escolher a forma de retirada
    do produto 

    Contexto: Escolha da Retirada do Protudo
        Dado que esteja na pagina Opções de entrega

    Esquema do Cenário: Retirada
        Quando selecionar a forma de entrega "<entrega>"
        Então deverá confirma a opção "<opção>"
            Exemplos:
                | entrega         | opção                   |
                | Retirar na loja | Retirar Produto na loja |
                | Padrão          | Entrega Padrão          |


    
    
    # E quando for Retirar na Loja
    # Então deverá confirmar opção de entrega Retirar produto na loja
    # E quando for Padrão
    # Então deverá confirmar opção de entrega Padrão