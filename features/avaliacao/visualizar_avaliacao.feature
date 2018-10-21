#language: pt
#encoding: utf-8

Funcionalidade: Eu, enquanto usuário, consigo visualizar  a avaliação de um cardápio

Cenário de Fundo:
Dado que eu estou na página onde o cardápio consultado é mostrado

Cenário: Usuário visualiza avaliação
	Quando eu clico em “Avaliar” 
	Então eu devo visualizar a página onde o formulário de avaliação é mostrado
