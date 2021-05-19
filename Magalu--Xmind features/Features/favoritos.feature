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
        Então deverá ser visualizado o resultado "<resultado>"
            Exemplos:
                | ordenar            | resultado                              |
                | relevancia         | iPhone 12 Apple 64 GB Preto            |
                | lançamento         | Fone de Ouvido Galaxy Buds Pro Sem fio |
                | mais vendidos      | iPhone 12 Apple 64 GB Preto            |
                | maior preço        | iPhone 12 Apple 64 GB Preto            |
                | menor preço        | Fone de Ouvido Galaxy Buds Live        |
                | mais bem avaliados | Fone de Ouvido Galaxy Buds Pro Sem fio |


    Esquema do Cenário: Forma de Visualização
        Quando clicar em ordenar "<ordenar>"
        Então deverá ser exibidos os produtos em forma "<forma>"
            Exemplos:
                | ordenar  | forma          |
                | Em lista | Lista          |
                | Normal   | páginação      |
                | Grande   | ícones grandes |

    
    
    # E quando escolher Visualização em Lista
    # Então deverá ser exibido produtos em lista na vitrine
    # E quando escolher visualização normal
    # Então deverá ser exibido produtos em páginação
    # E quando escolher Visualição Grande
    # Então deverá ser exibido produtos com ícones grandes
