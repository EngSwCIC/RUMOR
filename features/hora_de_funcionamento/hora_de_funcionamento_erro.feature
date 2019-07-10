#language:pt 
#encoding: utf-8

@erro

Funcionalidade: Horário de funcionamento erro

Cenario: Criação de horário de funcionamento errado

Quando o adm estiver logado
E ir para a página de horários
E clicar para criar uma novo horário
Quando eu não preencher nenhum campo 
E clicar em criar
Então não deve ser possível criar um horário
