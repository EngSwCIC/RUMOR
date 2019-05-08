#language:pt
#encoding: utf-8

Funcionalidade: Como gestor quero gerar um relatorio a partir do dados da  pesquisas de satisfação


Cenario: Gerar um relatorio da pesquisa em que estou

Dado que eu esteja logado com gestor
Quando eu for para a página de criação de pesquisa
Dado que eu tenha dados no banco
Então ao clicar no link gerar pdf uma nova página se abrira
