#language:pt
#encoding: utf-8

Funcionalidade: Como gestor posso deletar minhas pesquisas


Cenario: Criar uma nova pesquisa de satisfação

Dado que eu esteja logado com gestor com o email "gestor@gestor.com" e a senha "gestor567"
E que todas as minhas pesquisas estejam listadas
Quando eu clico no botão "Excluir" 
Então minha pesquisa deve ser excluida