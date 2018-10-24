#language: pt
#encoding: utf-8

Funcionalidade: Eu, enquanto usuário, consigo avaliar o restaurante universitário como estabelecimento.

Cenário de Fundo:
Dado que eu estou na página onde o formulário de avaliação do estabelecimento é visualizado

Cenário: Usuário envia o formulário de avaliação do estabelecimento (Happy Path)
	Quando eu preencho o formulário de avaliação do estabelecimento com:
	| Nome				|Roberta Costa Silva		|
	| E-mail				|robertacs42@gmail.com	|
	| Tipo de usuário		|Estudante			|
	| Nota limpeza do restaurante	|3				|
	| Nota limpeza dos banheiros	|2				|
	| Nota organização do Caixa	|4				|
| Nota porta-objetos		|3				|
	| Considerações			|Melhorar limpeza		|
	E eu aperto em “Enviar”
	Então eu devo estar na página de avaliação do estabelecimento
	E eu devo ver “Avaliação enviada com sucesso”

Cenário: Usuário envia o formulário de avaliação do estabelecimento (Sad Path)
Quando eu preencho o formulário de avaliação do estabelecimento com:
	| Nome				| |
	| E-mail				| |
	| Tipo de usuário		| |
	| Refeição			| |
	| Categoria			| |
	| Nota				| |
	| Considerações			| |
	E eu aperto em “Enviar”
	Então eu devo estar na página do formulário de avaliação do estabelecimento
	E eu devo ver “Avaliação não enviada”
	E eu devo ver todas as mensagens de falha para envio do formulário
