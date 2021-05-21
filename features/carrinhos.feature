#language: pt

Funcionalidade: Carrinhos
    

        Contexto: Pagina do site
            Dado que esteja no site https://serverest.dev/
        
        #GET
        Cenário: Listar carrinhos cadastrados
            Quando acessar a página /carrinhos
            Então deverá obter status 200 com a lista de carrinhos

        Esquema do Cenário: Buscar carrinho por ID
            Quando acessar a página /carrinhos/{_id}
            E o carrinho for "<ID>"
            Então deverá obter "<code>" com "<mensagem>"
                Exemplos:
                    | ID       | status | mensagem                |
                    | válido   | 200    | carrinho encontrado     |
                    | inválido | 400    | carrinho não encontrado |
        
        #POST
        Esquema do Cenário: Cadastrar carrinhos
            Quando acessar a página /carrinhos
            E informar um "<string>"
            Então deverá obter "<code>" com "<mensagem>"
                Exemplos:
                    | string   | code | mensagem                            |
                    | válida   | 201  | cadastro com sucesso                |
                    | inválida | 400  | algo deu errado                     |
                    | inválida | 401  | token ausente, inválido ou expirado |
        #DELETE
        Esquema do Cenário: Excluir carrinho
            Quando acessar a página /carrinhos/concluir-compra
            E informar o ID do carrinho
            Então deverá obter "<code>" com "<mensagem>"
                Exemplos:
                    | code | mensagem                                                                      |
                    | 200  | registro excluido com sucesso / não foi encontrado carrinho para esse usuário |
                    | 401  | token ausente, inválido ou expirado                                           |

        Esquema do Cenário: Retornar produtos para estoque
            Quando acessar a página /carrinhos/cancelar-compra
            E cancelar compra
            Então deverá obter "<code>" com "<mensagem>" e os produtos seram direcionados para o estoque
                Exemplos:
                    | code | mensagem                                                                      |
                    | 200  | registro excluido com sucesso / não foi encontrado carrinho para esse usuário |
                    | 401  | token ausente, inválido ou expirado                                           |