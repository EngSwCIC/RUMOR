#language:pt
#encoding: utf-8

Funcionalidade: Como gestor quero gerar um relatorio a partir do dados da  pesquisas de satisfação


Cenario: Gerar um relatorio da pesquisa em que estou

Dado que eu esteja logado com gestor com o email "gestor@gestor.com" e a senha "gestor567"
E eu esteja na página de criação de pesquisa
E ao ver a pesquisa do dia "24 / 10 / 2018"
Quando eu clicar em "Gerar relatorio"
Então será criado um relátorio com os dados da quela pesquisa