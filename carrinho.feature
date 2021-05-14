#language: pt

Funcionalidade: Adicionar e Remover Produtos do Carrinho
Eu como usuário desejo conseguir
Adicionar e remover produtos do Carrinho

Contexto: Carrinho
       Dado que esteja na página de carrinhos

Esquema do Cenário: Adicionar e Remover produtos do Carrinho
       Quando realizar a ação "<ação>" adicionar ou remover produtos do Carrinho
       Então deverá ser exibida mensagem "<mensagem">
       Exemplos:
       
            | ação      | mensagem                         |
            | Adicionar | Produto adicionado ao Carrinho   |
            | Remover   | Produto foi removido do Carrinho |