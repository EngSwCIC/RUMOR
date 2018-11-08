#language:pt 
#encoding: utf-8

Funcionalidade: Testar a criação de novas pesquisas de satisfação


Cenario: Criar uma nova pesquisa de satisfação

Dado que eu esteja logado com gestor com o email "gestor@gestor.com" e a senha "gestor567"
E eu esteja na página de criação de pesquisa
E quando eu apertar o botão de nova "Criar nova pesquisa"
Então uma nova pesquisa deve aparecer com a data do dia que foi feito
E essa nova pesquisa deve estar sendo listada na página de formularios de satisfação