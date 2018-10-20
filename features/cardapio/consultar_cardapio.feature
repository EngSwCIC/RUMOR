#language: pt
#encoding: utf-8

Funcionalidade: Eu, enquanto usuário, consigo consultar um cardápio 

Cenário de Fundo:
Dado que eu estou na página inicial do RUMOR
Quando eu clico em “Consultar”
Então eu devo visualizar o cardápio do dia e campus

Cenário: Usuário visualiza cardápio consultado (Happy Path)
	Quando eu preencho os campos com:
		| Data	|17/10/2018|
		| Campus | Darcy Ribeiro|
E eu aperto em “Consultar”
Então eu devo entrar na página de visualização do cardápio

Cenário: Usuário não preenche os campos (Sad Path)
Quando eu preencho os campos com:
		| Data	| |
		| Campus | |
E eu aperto em “Consultar”
Então estar na página inicial
E eu devo ver todas as mensagens de falha para consulta de cardápio
