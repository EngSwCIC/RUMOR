#language: pt
#encoding: utf-8

Funcionalidade: Eu, enquanto usuário, consigo visualizar a localização 

Cenário de Fundo:
Dado que eu estou na página de visualização do cardápio consultado

Cenário: Usuário visualiza as informações do RU do campus de entrada
	Quando eu clico em "Localização e Horários"
	Então eu devo entrar na página de visualização da localização do Campus selecionado
