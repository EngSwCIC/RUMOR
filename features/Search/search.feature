#language:pt

Funcionalidade: realizar testes de possíveis cenários para criação das pesquisas de satisfação


Cenario: Criar uma nova pesquisa de satisfação
Contexto: Criar uma pesquisa com parametros corretos
Dado que o gestor esteja na página de criar novas pesquisas
Quando ele inserir as perguntas nos formulários
E ao apertar o botão de salvar
Então ele deve ser direcionando para a página principal
