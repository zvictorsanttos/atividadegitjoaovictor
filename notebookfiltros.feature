            #language: pt

            Funcionalidade: Filtrar Pesquisas por Notebooks
            Eu como usuário desejo filtrar categorias de notebook

            Contexto: Filtro de Notebook
            Dado que esteja na página de Notebooks

            Esquema do Cenário: Filtrando por Marca e Categorias

            Quando clicar na categoria "<categoria>" e marca "<marca>" desejada
            Então deverá ser exibido resultados "<resultados>" produtos referentes a categoria e marca desejada
            Exemplos:
            | categoria      | marca   | resultados            |
            | notebook gamer | lenovo  | notebook gamer lenovo |
            | notebook gamer | acer    | notebook gamer acer   |
            | notebook       | apple   | notebook apple        |
            | chromebook     | samsung | chormebook samsung    |