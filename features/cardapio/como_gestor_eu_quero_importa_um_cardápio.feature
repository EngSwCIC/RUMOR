#language: pt
#encoding: utf-8

Funcionalidade: como_gestor_eu_quero_importa_um_cardápio
  Como gestor
  Para que eu possa criar cardápios facilmente
  Eu quero importar um cardápio

  Cenário: Gestor importar um cardápio[Cenário - Feliz]
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de importar cardápio
    E que eu adiciono o arquivo de "Cardapio"
    Quando eu clico no botão "Importar Cardápio"
    Então eu quero ser redirecionado para página de cardápios
