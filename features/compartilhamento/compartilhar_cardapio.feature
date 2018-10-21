#language: pt
#encoding: utf-8

Funcionalidade: Eu, enquanto usuário, posso compartilhar um cardápio

Cenário de Fundo:
Dado que o banco possui um restaurante cadastrado
E que o banco possui um cardápio cadastrado para esse restaurante
E que eu estou na página de consulta do cardápio

Cenário: Usuário visualiza o link para compartilhar cardápio consultado	
    Quando eu preencho os campos com:
		    | Data	|17/10/2018|
		    | Campus | Darcy Ribeiro|
E eu aperto em “Consultar”
Então eu devo entrar na página de visualização do cardápio
    Quando eu clico em “Compartilhar”
	      Então eu devo estar na página de compartilhamento
	      E eu devo ver o link do cardápio
