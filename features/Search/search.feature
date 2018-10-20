#language:pt

Funcionalidade: realizar testes de possíveis cenários para criação das pesquisas de satisfação


Cenario: Criar uma nova pesquisa de satisfação
Contexto: Criar uma pesquisa com parametros corretos
Dado que o gestor esteja na página de criar novas pesquisas
Quando ele preencher as perguntas para o formulario de pesquisa
E ao apertar o botão de salvar
Então ele deve ser direcionando para a página principal

Contexto: Criar uma pesquisa com paramatros incorretos
Dado que o gestor esteha na página de criar novas pesquisas
Quando apenas apertaro botão de salvar
Então uma mensagem de erro deve ser mostrada

Cenario: Criar pesquisa, editar e apagar
Dado que o gestor cria uma nova pesquisa
Quando ele editar um formulario
E logo apos apertar deletar
Então a pesquisa deve ser excluida


Cenario: Responder a pesquisa
Dado que o gestor criou uma nova pesquisa
Quando um usuario comum responder a pesquisa
Então um email deve ser disparado para o gestor