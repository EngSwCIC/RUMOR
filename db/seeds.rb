# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ru.create!([{
             name: 'Darcy Ribeiro',
             working_hour: "Diariamente
                  Café da manhã: 7h às 9h
                  Almoço: 10h30 às 14h30*
                  Jantar: 17h às 19h30

                  Restaurante Executivo: seg à sexta 11h as 14h30 (durante o período das aulas)
                  *sáb, dom e feriados : 11h ás 14h30",
             location: 'Campus Darcy Ribeiro'

           }, {
             name: 'RU/FGA',
             working_hour: "De segunda-feira a sexta-feira**
                  Café da manhã: 7h às 9h
                  Almoço: 10h30 às 14h30*
                  Jantar: 17h às 19h30

                  *sáb, dom e feriados : 11h ás 14h30
                  **Exceto feriados",
             location: 'Prédio do MESP'

           }, {
             name: 'RU/FCE',
             working_hour: "De segunda-feira a sexta-feira**
                  Café da manhã: 7h às 9h
                  Almoço: 11h às 14h30*
                  Jantar: 17h às 19h30
                  Sábado**
                  Café da manhã: 7h às 9h
                  Almoço: 11h às 14h30

                  *sáb, dom e feriados : 11h ás 14h30
                  **Exceto feriados",
             location: 'Prédio do MESP'

           }, {
             name: 'RU/FUP',
             working_hour: "Diariamente
                  Café da manhã: 7h às 9h
                  Almoço: 10h30 às 14h30
                  Jantar: 17h às 19h30",
             location: 'Prédio do MESP'

           }, {
             name: 'RU/FAL',
             working_hour: "De segunda-feira a sexta-feira**
                  Café da manhã: 7h às 9h
                  Almoço: 10h30 às 14h30*
                  Jantar: 17h às 19h30

                  *sáb, dom e feriados : 11h ás 14h30
                  **Exceto feriados",
             location: 'Sede administrativa'
           }])


Rating.create!([
     {    
          campus_name: 'Darcy Ribeiro',
          meal: 'Café da Manhã',
          rating: -1
     },{
          campus_name: 'RU/FGA',
          meal: 'Café da Manhã',
          rating: 0.2
     },{
          campus_name: 'RU/FCE',
          meal: 'Café da Manhã',
          rating: 2
     },{
          campus_name: 'RU/FUP',
          meal: 'Café da Manhã',
          rating: 3.6

     },{
          campus_name: 'RU/FAL',
          meal: 'Café da Manhã',
          rating: 4.3

     },{
          campus_name: 'Darcy Ribeiro',
          meal: 'Café da Manhã',
          rating: 5

     },{
          campus_name: 'RU/FGA',
          meal: 'Almoço',
          rating: -1
     },{
          campus_name: 'RU/FCE',
          meal: 'Almoço',
          rating: 0.8

     },{
          campus_name: 'RU/FUP',
          meal: 'Almoço',
          rating: 1.5

     },{
          campus_name: 'RU/FAL',
          meal: 'Almoço',
          rating: 3.3

     },{
          campus_name: 'Darcy Ribeiro',
          meal: 'Almoço',
          rating: 4.2

     },{
          campus_name: 'RU/FGA',
          meal: 'Almoço',
          rating: 4.7

     },{
          campus_name: 'RU/FCE',
          meal: 'Jantar',
          rating: -1
     },{
          campus_name: 'RU/FUP',
          meal: 'Jantar',
          rating: 0

     },{
          campus_name: 'RU/FAL',
          meal: 'Jantar',
          rating: 1.3

     },{
          campus_name: 'Darcy Ribeiro',
          meal: 'Jantar',
          rating: 2.9

     },{
          campus_name: 'RU/FGA',
          meal: 'Almoço',
          rating: 4.1

     },{
          campus_name: 'RU/FCE',
          meal: 'Jantar',
          rating: 4.8
     }
])