#language: pt

Funcionalidade: Usuarios
  

        Contexto: Pagina do site
            Dado que esteja no site https://serverest.dev/
        
        #GET
        Cenário: Listar usuarios cadastrados
            Quando acessar a página /usuarios
            Então deverá obter status 200 exibindo lista de usuarios

        Esquema do Cenário: Buscar usuarios por id
            Quando acessar a página /usuarios/{_id}
            E informar o "<ID>"
            Então deverá obter "<code>" com "<mensagem>"
                Exemplos:
                    | ID       | status | mensagem               |
                    | válido   | 200    | usuario encontrado     |
                    | inválido | 400    | usuario não encontrado |
        
        #POST
        Esquema do Cenário: Cadastrar usuario
            Quando acessar a página /usuarios
            E informar os campos com "<string>"
            Então deverá obter "<code>" com "<mensagem>"
                Exemplos:
                    | string   | code | mensagem             |
                    | válido   | 200  | cadastro com sucesso |
                    | inválido | 400  | e-mail ja cadastrado |
        
        #DELETE
        Esquema do Cenário: Excluir usuario
            Quando acessar a página /usuarios/{_id}
            E informar um "<ID>" do usuário
            Então deverá obter "<code>" com "<mensagem>"
                Exemplos:
                    | ID       | code | mensagem                        |
                    | válido   | 200  | registro excluido com sucesso   |
                    | inválido | 400  | usuario com carrinho cadastrado |
        
        #PUT
        Esquema do Cenário: Editar usuario
            Quando acessar a página /usuarios/{_id}
            E buscar por ID cadastrado
            E alterar informações do usuario
            Então deverá obter "<code>" e "<mensagem>"
                Exemplos:
                    | code | mensagem             |
                    | 200  | alterado com sucesso |
                    | 201  | cadastro com sucesso |
                    | 400  | e-mail ja cadastrado |