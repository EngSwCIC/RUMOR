#language: pt
#encoding: utf-8

Funcionalidade: Eu, enquanto usuário, consigo avaliar o restaurante universitário como estabelecimento.

Contexto:
Dado que eu estou na página de avaliação de restaurante

Cenário: Usuário envia o formulário de avaliação do estabelecimento (Happy Path)
	Quando eu preencho o formulário de avaliação do estabelecimento com:
	| Nome															|Roberta Costa Silva		|
	| E-mail														|robertacs42@gmail.com	|
	| Tipo de usuário										|Aluno			|
	| Nota para limpeza do restaurante	|3				|
	| Nota para limpeza dos banheiros		|2				|
	| Nota para organização do caixa		|4				|
	| Nota para porta-objetos						|3				|
	| Considerações											|Melhorar limpeza		|
	E eu pressiono "Enviar"
	Então eu devo estar na página de "Consultar Cardápio"
	E eu devo ver "Avaliação do RU enviada com sucesso"

Cenário: Usuário envia o formulário de avaliação do estabelecimento (Sad Path)
Quando eu preencho o formulário de avaliação do estabelecimento com:
	| Nome															|		|
	| E-mail														|	|
	| Tipo de usuário										|			|
	| Nota para limpeza do restaurante	|				|
	| Nota para limpeza dos banheiros		|				|
	| Nota para organização do caixa		|				|
	| Nota para porta-objetos						|			|
	| Considerações											|	|
	E eu pressiono "Enviar"
	Então eu devo ver "Avaliação não enviada. Preencha os campos com erros."
