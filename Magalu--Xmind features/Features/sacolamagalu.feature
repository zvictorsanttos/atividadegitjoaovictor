#langueage: pt 

Funcionalidade: Sacola de Compras Magalu
    Eu como usuário desejo
    visualizar meus Produtos
    na sacola de Produtos

        Contexto: Alterar  Quantidade e Remover produtos
            Dado que esteja na página de Sacolas
            
        Esquema do Cenário: Alterar Quantidade do Produto 
            Quando clicar em "<ação>"
            Então deverá ser exibido "<quantidade>" produtos
                Exemplos:
                    | ação  | quantidade |
                    | mais  | 2          |
                    | menos | 1          |
            
        # Esquema do Cenário: Alterar Quantidade do Produto
        #     Quando clicar em "<mais>" aumentar quantidade
        #     E clicar em "<menos>" diminuir quantidade
        #     Então deverá alterar a quantidade "<quantidade>" de Produtos
        #         Exemplos: 
        #             | mais | menos | quantidade |
        #             | 1    |       | 2          |
        #             | 2    |       | 3          |
        #             |      | 1     | 0          |
        #             |      |       | 1          |

    


        Cenário: Remover Produtos
            Quando clicar em Excluir
            Então deverá ser excluido o produto da sacola

        #Endereço

        #Contexto: Alterar Endereço de entrega
            Dado que esteja na página de Sacolas

        Cenário: Alterar Endereço
            Quando clicar em Alterar
            E digitar um CEP válido
            Então deverá alterar o Endereço

        #Continuar comprando
        Esquema do Cenário: Comprar mais Produtos e Continuar compra
            Quando realizar a "<ação>"
            Então deverá ser redirecionado para página "<página>"
                Exemplos:
                    | ação                  | página  |
                    | Comprar mais produtos | home    |
                    | Continuar             | Entrega |

            
        # Contexto: Comprar mais Produtos
        #   Dado que esteja na página de Sacolas

        # Cenário: Continuar comprando
        #     Quando clicar em Comprar Mais Protudos
        #     Então deverá ser redirecionado para home

        # #Continuar 

        # Contexto: Continuar compra
        #     Dado que esteja na página de Sacolas

        # Cenário: Continuação da compra
        #     Quando clicar em Continuar
        #     Então deverá visualizar a página de Entrega