Feature: Novo Caso
    Eu como usuário desejo
    cadastrar um novo caso a
    minha ong

    Scenario: Criar um novo caso
        Given esteja logado com uma conta valida
        When preencher o formulario de cadastro
        Then deverá conseguir cadastrar um novo caso