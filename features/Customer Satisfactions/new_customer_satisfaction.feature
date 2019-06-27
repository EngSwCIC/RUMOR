#language:pt
#encoding: utf-8

Funcionalidade: Como administrador não quero criar uma nova avaliação


Cenario: Login como administrador

Dado que eu acesse a pagina inicial 
E clique em "ADMINISTRAÇÃO"
Quando faço login com "user@user.com" e "user123"
Então devo ser autenticado com sucesso
E devo ler a menssagem "Autenticado com sucesso!"

Cenario: Criar nova avaliação

Quando eu clicar em "VER PESQUISAS"
Então devo ver todas as avaliações
Quando  eu clicar em "New Customer Satisfaction"
Então devo ir para a página de avaliação
E ao preencher os campos
Quando clicar em "Create Customer satisfaction" uma nova avaliação deve ser criada
E devo ler a menssagem "Pesquisa de Satisfação criada com sucesso."
