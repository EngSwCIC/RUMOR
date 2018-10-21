#language: pt
#encoding: utf-8

Funcionalidade: como_gestor_eu_quero_criar_um_cardápio
  Como gestor
  Para que eu possa armazenar refeições
  Eu quero criar um cardápio

  Cenário: Gestor criar um cardápio[Cenário - Feliz]
    Dado que eu estou logado como gestor
    E que eu estou na página de criar cardápio
    E que eu preencho os campos adequadamente.
    Quando eu clico em "Criar Cadápio"
    Então eu quero ser redirecionado para a página de cardápios
  
  Cenário: Gestor criar um cardápio[Cenário - Triste]
    Dado que eu estou logado como gestor
    E que eu estou na página de criar cardápio
    E que eu preencho os campos inadequadamente.
    Quando eu clico em "Criar Cadápio"
    Então eu não quero ser redirecionado para a página de cardápios
    E uma mensagem de erro deve aparecer