#language:pt
#encoding: utf-8

Funcionalidade: Como gestor quero vizualizar um relatorio feito com  base nas pesquisas de satisfação


Cenario: Visualizar um relatorio da pesquisa em que estou

Dado que eu esteja logado com gestor com o email "gestor@gestor.com" e a senha "gestor567"
E eu esteja na página de criação de pesquisa
E ao ver a pesquisa do dia "24 / 10 / 2018"
Quando eu clicar em "Gerar relatorio"
E clicar em cima do relatorio gerado 
Então eu poderei ver um relatorio com os resultados da pesquisa em que estou