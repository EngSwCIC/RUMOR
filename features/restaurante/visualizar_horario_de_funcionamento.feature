#language: pt
#encoding: utf-8

Funcionalidade: Eu, enquanto usuário, consigo visualizar o horário de funcionamento do RU 

Cenário de Fundo:
Dado que eu estou na página de visualização de horário

Cenário: Usuário visualiza as informações do RU do campus Darcy Ribeiro
Quando eu seleciono o nome "Darcy Ribeiro" 
E aperto em "Pesquisar"
Então eu devo visualizar o resultado "Diariamente Café da manhã: 7h às 9h Almoço: 10h30 às 14h30* Jantar: 17h às 19h30Restaurante Executivo: seg à sexta 11h as 14h30 (durante o período das aulas) *sáb, dom e feriados : 11h ás 14h30"

Cenário: Usuário visualiza as informações do RU do campus Gama
Quando eu seleciono o nome "RU/FGA" 
E aperto em "Pesquisar"
Então eu devo visualizar o resultado "De segunda-feira a sexta-feira** Café da manhã: 7h às 9h Almoço: 10h30 às 14h30* Jantar: 17h às 19h30*sáb, dom e feriados : 11h ás 14h30 **Exceto feriados"

Cenário: Usuário visualiza as informações do RU do campus Ceilândia
Quando eu seleciono o nome "RU/FCE" 
E aperto em "Pesquisar"
Então eu devo visualizar o resultado "De segunda-feira a sexta-feira** Café da manhã: 7h às 9h Almoço: 11h às 14h30* Jantar: 17h às 19h30 Sábado** Café da manhã: 7h às 9h Almoço: 11h às 14h30*sáb, dom e feriados : 11h ás 14h30 **Exceto feriados"

Cenário: Usuário visualiza as informações do RU do campus Planaltina
Quando eu seleciono o nome "RU/FUP" 
E aperto em "Pesquisar"
Então eu devo visualizar o resultado "Diariamente Café da manhã: 7h às 9h Almoço: 10h30 às 14h30 Jantar: 17h às 19h30"

Cenário: Usuário visualiza as informações do RU do campus Fazenda Água Limpa
Quando eu seleciono o nome "RU/FAL" 
E aperto em "Pesquisar"
Então eu devo visualizar o resultado "De segunda-feira a sexta-feira** Café da manhã: 7h às 9h Almoço: 10h30 às 14h30* Jantar: 17h às 19h30*sáb, dom e feriados : 11h ás 14h30 **Exceto feriados"