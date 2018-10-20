#language: pt
#encoding: utf-8

loginFacebook.feature
Funcionalidade: Eu, enquanto usuário, consigo fazer login no Facebook para compartilhar o cardápio

Cenário de Fundo:
Dado que eu estou na página de visualização do cardápio consultado

Cenário: Usuário faz login no Facebook para compartilhar o cardápio
	Quando eu clico em “Avaliar”
E eu escolho compartilhar pelo Facebook
Então eu devo conseguir fazer o login pelo Facebook 
E o post com o link do cardápio consultado é gerado
