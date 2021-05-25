#language: pt

Funcionalidade: Usuarios
  

        Contexto: Pagina do site
            Dado que esteja no site https://serverest.dev/
        
        #GET
        Cenário: Listar usuarios cadastrados
            Quando acessar a página /usuarios
            Então deverá retornar schema "get_users" e "<status>" com "<mensagem>"

        Esquema do Cenário: Buscar usuarios por id
            Quando acessar a página /usuarios/{_id}
            E informar o "<ID>"
            Então deverá retornar schema "get_users_by_id" e "<status>" com "<mensagem>"
                Exemplos:
                    | ID       | status | mensagem               |
                    | válido   | 200    | usuario encontrado     |
                    | inválido | 400    | usuario não encontrado |
        
        #POST
        Esquema do Cenário: Cadastrar usuario
            Quando acessar a página /usuarios
            E informar os campos com "<string>"
            Então deverá retornar schema "post_user" e "<status>" com "<mensagem>"
                Exemplos:
                    | string   | status | mensagem             |
                    | válido   | 200    | cadastro com sucesso |
                    | inválido | 400    | e-mail ja cadastrado |
        
        #DELETE
        Esquema do Cenário: Excluir usuario
            Quando acessar a página /usuarios/{_id}
            E informar um "<ID>" do usuário
            Então deverá retornar schema "delete_users" e "<status>" com "<mensagem>"
                Exemplos:
                    | ID       | status | mensagem                        |
                    | válido   | 200    | registro excluido com sucesso   |
                    | inválido | 400    | usuario com carrinho cadastrado |
        
        #PUT
        Esquema do Cenário: Editar usuario
            Quando acessar a página /usuarios/{_id}
            E buscar por ID cadastrado
            E alterar informações do usuario
            Então deverá retornar schema "put_users_by_id" e "<status>" com "<mensagem>"
                Exemplos:
                    | status | mensagem             |
                    | 200    | alterado com sucesso |
                    | 201    | cadastro com sucesso |
                    | 400    | e-mail ja cadastrado |