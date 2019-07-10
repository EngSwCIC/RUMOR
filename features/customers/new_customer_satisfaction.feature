#language:pt
#encoding: utf-8

Funcionalidade: Como administrador não quero criar uma nova avaliação

  Cenario: Criar nova avaliação
    Dado que eu estou logado como gestor
    Quando eu clicar em "Ver pesquisas"
    Então devo ver todas as avaliações
    Quando  eu clicar em "New Customer Satisfaction"
    Então devo ir para a página de avaliação
    E ao preencher os campos
    Quando clicar em "Create Customer satisfaction" uma nova avaliação deve ser criada
    E devo ler a menssagem "Pesquisa de Satisfação criada com sucesso."
