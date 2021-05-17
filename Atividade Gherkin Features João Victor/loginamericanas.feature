#language: pt

Funcionalidade: Login Americanas
    Eu como usuário desejo realizar login
    no site da americanas com meu cadastro
    previamente realizado.
    
    
    Contexto: Tela de login
        Dado que esteja na página de login
    
    Esquema do Cenario: Login interno
        Quando logar com email "<email>" e senha "<senha>"
        Então deverá ser redirecionado para a página "<pagina>"
        E deverá ser exibido a mensagem "<mensagem>"
            Exemplos:
            | email                 | senha             | pagina | mensagem                   |
            | teste@compasso.com.br | senhaCorreta@123  | home   | Bem vindo!                 |
            | thatisnotanemail      | senhaCorreta@123  | login  | E-mail ou senha incorretos |
            | teste@compasso.com.br | enhaIncorreta@321 | login  | E-mail ou senha incorretos |
            |                       | senhaCorreta@123  | login  | Preencha este campo!       |
            | teste@compasso.com.br |                   | login  | Preencha este campo!       |

   
    #Completar este cenário
    
        
    Esquema do Cenário: Login Social
        
        Quando logar com email "<email>" e senha "<senha>" no modal de acesso do facebook
        Então deverá ser redirecionado para página "<pagina>"
        E deverá ser exibido a mensagem "<mensagem>"
            Exemplos:
            | email                         | senha              | pagina | mensagem                   |
            | victor.santos@compasso.com.br | senhaCorreta@123   | home   | Bem vindo                  |
            | testesememail                 | senhaCorreta@123   | login  | E-mail ou senha incorretos |
            | victor.santos@compasso.com.br | senhaIncorreta@321 | login  | E-mail ou senha incorretos |
            |                               | senhaCorreta@123   | login  | Preencha este campo!       |
            | victor.santos@compasso.com.br |                    | login  | Preencha este campo!       |

