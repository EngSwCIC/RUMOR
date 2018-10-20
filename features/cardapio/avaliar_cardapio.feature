avaliarCardapio.feature

Funcionalidade: Eu, enquanto usuário, consigo avaliar um cardápio.

Cenário de Fundo:
Dado que eu estou na página onde o formulário de avaliação é visualizado

Cenário: Usuário envia o formulário de avaliação (Happy Path)
	Quando eu preencho o formulário de avaliação com:
	| Nome				|Roberta Costa Silva		|
	| E-mail				|robertacs42@gmail.com	|
	| Tipo de usuário		|Estudante			|
	| Refeição			|Almoço			|
	| Categoria			|Salada				|
	| Nota				|0				|
	| Considerações			|				|
	E eu aperto em “Enviar”
	Então eu devo estar na página do cardápio consultado
	E eu devo ver “Avaliação enviada com sucesso”

Cenário: Usuário envia o formulário de pesquisa de satisfação (Sad Path)
	Quando eu clico em “Avaliar”
Então eu devo estar na página com o formulário de pesquisa de satisfação
Quando eu preencho o formulário com:
	| Nome				| |
	| E-mail				| |
	| Tipo de usuário		| |
	| Refeição			| |
	| Categoria			| |
	| Nota				| |
	| Considerações			| |
	E eu aperto em “Enviar”
	Então eu devo estar na página com o formulário de pesquisa de satisfação
	E eu devo ver “Avaliação não enviada”
	E eu devo ver todas as mensagens de falha para envio da pesquisa de satisfação
