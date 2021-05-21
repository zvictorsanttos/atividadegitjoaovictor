#language: pt

Funcionalidade: Login
  

    #POST
    Esquema do Cenário: Realizar login
        Quando acessar a página /login
        E informar "<string>"
        Então deverá obter "<code>" com "<mensagem>"
            Exemplos:
                | string   | code | mensagem                    |
                | valido   | 200  | login realizado com sucesso |
                | invalido | 400  | e-mail e/ou senha invalidos |