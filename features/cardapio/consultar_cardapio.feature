#language: pt
#encoding: utf-8

Funcionalidade: Consultar cardápio

Cenário: Preencheu todos os campos e apertar em Consultar
	Dado que eu estou na página de consulta de cardápio
	Quando eu preencher todos os campos
	E clicar em "Consultar"
	Então deve mostrar a mensagem "Cardápio do dia"
