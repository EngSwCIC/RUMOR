#language: pt
#encoding: utf-8

Funcionalidade: como_gestor_eu_quero_importa_um_cardápio
  Como gestor
  Para que eu possa criar cardápios facilmente
  Eu quero importar um cardápio

  Cenário: Gestor importar um cardápio[Cenário - Feliz]
    Dado que eu estou logado como gestor
    E que eu estou na página de importar cardápio
    E que eu adiciono o arquivo de "Cardápio"
    Quando eu clicar em "Importar Cadápio"
    Então eu quero ser redirecionado para a página de cardápios

  Cenário: Gestor importar um cardápio[Cenário - Triste]
    Dado que eu estou logado como gestor
    E que eu estou na página de importar cardápio
    E que eu adiciono o arquivo de "Cardápio Inválido"
    Quando eu clicar em "Importar Cadápio"
    Então eu não quero ser redirecionado para a página de cardápios
    E uma mensagem de erro deve aparecer