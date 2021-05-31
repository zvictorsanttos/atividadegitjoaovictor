
Feature: Cadastro
    Eu como usuário quero
    conseguir fazer o cadastro
    de uma Ong
    
    Scenario: Cadastro de Ong's
        Given que esteja na página cadastro
        When informar os dados para cadastro
        Then deverá "validarCadastroDeOng"
    
