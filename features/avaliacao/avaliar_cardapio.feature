#language: pt
#encoding: utf-8

Funcionalidade: Eu, enquanto usuário, consigo avaliar um cardápio

	Contexto:
		Dado que eu estou na página do formulário de avaliação

	Cenário:Usuário envia o formulário de avaliação (Happy Path)
		Quando eu preencho o formulário de avaliação com:
			|Nome               |Roberta Costa Silva|
			|E-mail             |robertacs42@gmail.com|
			|Tipo de usuário    |Aluno|
			|Refeição           |Almoço|
			|Categoria          |Salada|
			|Nota               |0|
			|Considerações      |Melhorar|
		E eu pressiono "Enviar"
		Então eu devo estar na página inicial do Rumor
		E eu devo ver "Avaliação enviada com sucesso"

	Cenário: Usuário envia o formulário de avaliação (Sad Path)
		Quando eu preencho o formulário de avaliação com:
			|Nome             | |
			|E-mail           | |
			|Tipo de usuário  | |
			|Refeição         | |
			|Categoria        | |
			|Nota             | |
			|Considerações    | |
		E eu pressiono "Enviar"
		Então eu devo ver "Os seguintes erros impediram o envio da avaliação"
	# E eu devo ver todas as mensagens de falha para envio da pesquisa de satisfação
