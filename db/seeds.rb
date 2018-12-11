# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cardapio.create!([
        {
            data: "2018-03-24",
            campus: "Darcy Ribeiro",
            bebidas_quentes: "Café e Leite",
            bebida_vegetariana: "Leite de Soja",
            achocolatado: "Achocolatado sem lactose",
            pao: "Pão careca",
            pao_vegetariano: "Pão francês",
            complemento: "Margarina e frango desfiado",
            complemento_vegetariano: "Creme vegetal e guacamole",
            frutas: "Melão",
            almoco_salada: "Alface lisa e cenoura ralada",
            almoco_molho: "Vinagrete",
            almoco_prato_principal: "Bife de panela",
            guarnicao: "Farofa de banana",
            almoco_prato_vegetariano: "Silveirinha de soja",
            almoco_acompanhamentos: "Arroz branco, arroz integral e feijão",
            almoco_sobremesa: "Abacaxi",
            almoco_refresco: "Morango",
            jantar_salada: "Acelga e tomate",
            jantar_molho: "Salsa",
            jantar_prato_principal: "Escondidinho de peixe",
            sopa: "Sopa de feijão com massinha",
            jantar_prato_vegetariano: "Grão de bico à indiana",
            jantar_acompanhamentos: "Arroz branco, arroz integral e feijão",
            jantar_sobremesa: "Geléia de frutas",
            jantar_refresco: "Acerola"
            }, {
            data: "2018-02-04",
            campus: "FCE",
            bebidas_quentes: "Café e Leite",
            bebida_vegetariana: "Leite de Soja",
            achocolatado: "Achocolatado sem lactose",
            pao: "Pão francês",
            pao_vegetariano: "Pão francês",
            complemento: "Margarina",
            complemento_vegetariano: "Creme vegetal",
            frutas: "Mamão",
            almoco_salada: "Alface lisa e pepino",
            almoco_molho: "Hortelã",
            almoco_prato_principal: "Lasanha a bolonhesa",
            guarnicao: "Legumes sauté",
            almoco_prato_vegetariano: "Lasanha de berinjela",
            almoco_acompanhamentos: "Arroz branco, arroz integral e feijão",
            almoco_sobremesa: "Maçã",
            almoco_refresco: "Acerola",
            jantar_salada: "Hakusai e tomate",
            jantar_molho: "Argentino",
            jantar_prato_principal: "Creme de cebola",
            sopa: "Frango Assado",
            jantar_prato_vegetariano: "Croquete de soja",
            jantar_acompanhamentos: "Arroz branco, arroz integral e feijão",
            jantar_sobremesa: "Laranja",
            jantar_refresco: "Manga"
    }])

    Ru.create!([{
             name: 'Darcy Ribeiro',
             working_hour: "Diariamente
                  Café da manhã: 7h às 9h
                  Almoço: 10h30 às 14h30*
                  Jantar: 17h às 19h30
                  Restaurante Executivo: seg à sexta 11h as 14h30 (durante o período das aulas)
                  *sáb, dom e feriados : 11h ás 14h30",
             location: 'Campus Darcy Ribeiro',
             nota: 7
           }, {
             name: 'FGA',
             working_hour: "De segunda-feira a sexta-feira**
                  Café da manhã: 7h às 9h
                  Almoço: 10h30 às 14h30*
                  Jantar: 17h às 19h30
                  *sáb, dom e feriados : 11h ás 14h30
                  **Exceto feriados",
             location: 'Prédio do MESP',
             nota: 5
           }, {
             name: 'FCE',
             working_hour: "De segunda-feira a sexta-feira**
                  Café da manhã: 7h às 9h
                  Almoço: 11h às 14h30*
                  Jantar: 17h às 19h30
                  Sábado**
                  Café da manhã: 7h às 9h
                  Almoço: 11h às 14h30
                  *sáb, dom e feriados : 11h ás 14h30
                  **Exceto feriados",
             location: 'Prédio do MESP',
             nota: 4
           }, {
             name: 'FUP',
             working_hour: "Diariamente
                  Café da manhã: 7h às 9h
                  Almoço: 10h30 às 14h30
                  Jantar: 17h às 19h30",
             location: 'Prédio do MESP',
             nota: 9
           }, {
             name: 'FAL',
             working_hour: "De segunda-feira a sexta-feira**
                  Café da manhã: 7h às 9h
                  Almoço: 10h30 às 14h30*
                  Jantar: 17h às 19h30
                  *sáb, dom e feriados : 11h ás 14h30
                  **Exceto feriados",
             location: 'Sede administrativa',
             nota: 6
           }])