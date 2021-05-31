Feature: Excluir caso 
    Eu como usuário desejo
    excluir caso a cadastrado
    na minha ong

    Scenario: Excluir um caso cadastrado
        Given esteja na pagina de lista de casos cadastrados
        When  realizar a ação de excluir caso
        Then deverá conseguir excluir um caso cadastrado