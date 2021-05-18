#Language: pt

Funcionalidade: Lista de Favoritos
Eu como usuário desejo
ter uma vitrine de produtos
Favorita

Contexto: Produtos Favoritos
Dado que esteja na página Seus Favoritos

Cenário: Visualização da Vitrine Favoritos
Quando clicar em Seus Favoritos
Então deverá visualizar sua listagem de produtos Favoritos


Esquema do Cenário: Ordenar produtos
Quando clicar em ordenar "<ordenar>"
E quando escolher forma de ordenação
Então deverá ser visualizado o resultado "<resultado>"
Exemplos:
            | ordenar            | resultado                                 |
            | relevancia         | exibir produtos mais relevantes           |
            | lançamento         | exibir produtos em lançamento             |
            | mais vendidos      | exibir produtos mais vendidos             |
            | maior preço        | exibir produtos do maior para menor preço |
            | menor preço        | exibir produtos do menos para maior preço |
            | mais bem avaliados | exibir produtos mais bem avaliados        |


Cenário: Forma de Visualização
Quando clicar em Visualização
E quando escolher Visualização em Lista
Então deverá ser exibido produtos em lista na vitrine
E quando escolher visualização normal
Então deverá ser exibido produtos em páginação
E quando escolher Visualição Grande
Então deverá ser exibido produtos com ícones grandes
