#langueage: pt 

Funcionalidade: Sacola de Compras Magalu

Eu como usuário desejo
visualizar meus Produtos
na sacola de Produtos

Contexto: Alterar  Quantidade e Remover produtos
Dado que esteja na página de Sacolas

Cenário: Alterar Quantidade do Produto
Quando clicar no "+"
Então deverá adicionar mais um na quantidade 
E quando clicar no -
Então deverá diminuir um na quantidade 


Cenário: Remover Produtos
Quando clicar em Excluir
Então deverá ser excluido o produto da sacola

#Endereço

Contexto: Alterar Endereço de entrega
Dado que esteja na página de Sacolas

Cenário: Alterar Endereço
Quando clicar em Alterar
E quando digitar um CEP válido
Então deverá alterar o Endereço

#Continuar comprando

Contexto: Comprar mais Produtos
Dado que esteja na página de Sacolas

Cenário: Continuar comprando
Quando clicar em Comprar Mais Protudos
Então deverá ser redirecionado para home

#Continuar 

Contexto: Continuar compra
Dado que esteja na página de Sacolas

Cenário: Continuação da compra
Quando clicar em Continuar
Então deverá visualizar a página de Entrega