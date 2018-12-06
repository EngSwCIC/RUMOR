#language:pt 
#encoding: utf-8

Funcionalidade: Pesquisas de satisfação sad path

Cenario: Criação de pesquisa errado

Quando o gestor estiver logado
E ir para a página de pesquisa
E clicar para criar uma nova pesquisa
Quando eu não preencher nenhum campo no form
E clicar no criar
Então não deve ser possível criar uma mensagem