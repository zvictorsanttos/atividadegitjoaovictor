#Language: pt

Funcionalidade: Autenticar cadastro e login

Eu como usuário desejo me cadastrar
e fazer o login no site do Magalu

Contexto: Login e Cadastro
Dado que esteja na tela de autenticação 

Esquema do Cenario: Tela de Cadastro
Quando informar o "<e-mail>" 
E se for um e-mail valido
Então deverá ser redirecionado para página "<página>" de cadastro
E se for um e-mail invalido 
Então deverá ser exibida mensagem "<mensagem>"
Exemplos: 
            | e-mail                        | página       | mensagem                               |
            | victor.santos@compasso.com.br | cadastro     |                                        |
            | victor.santoscompasso.com.br  | autenticação | O e-mail não foi digitado corretamente |
            |                               | autenticação | O e-mail não foi digitado corretamente |
            | victor.santos@compasso.com.br | autenticação | Já existe uma conta com este e-mail    |


Esquema do Cenario: Login
Quando logar com email "<email>" e senha "<senha>"
        Então deverá ser redirecionado para a página "<pagina>"
        E deverá ser exibido a mensagem "<mensagem>"
            Exemplos:
            | email                         | senha             | pagina | mensagem                               |
            | victor.santos@compasso.com.br | senhaCorreta@123  | home   | Bem vindo!                             |
            | victorsantosnemail            | senhaCorreta@123  | login  | Verifique login e senha para continuar |
            | victor.santos@compasso.com.br | enhaIncorreta@321 | login  | Verifique login e senha para continuar |
            |                               | senhaCorreta@123  | login  | Verifique login e senha para continuar |
            | victor.santos@compasso.com.br |                   | login  | Verifique login e senha para continuar |