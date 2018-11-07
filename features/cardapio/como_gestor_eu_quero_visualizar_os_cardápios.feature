#language: pt
#encoding: utf-8

@cardápio
Funcionalidade: como_gestor_eu_quero_visualizar_os_cardápios
  Como gestor
  Para que eu possa ter controle dos cardápios
  Eu quero visualizar os cardápios

  Cenário: Gestor visualizar os cardápios[Cenário - Feliz]
    Dado que eu estou logado como gestor
    E que eu estou na página de criar cardápio
    Quando eu clicar em "Ver Cardápios"
    Então eu quero ser redirecionado para a página de cardápios

  Cenario: Gestor visualizar cardápio específico
    Dado que eu estou logado como gestor
    E que eu estou na página de cardápios
    E ao ver o cardápio do dia '21-11-2018'
    Quando eu clicar em "Ver Cardápio"
    Então eu quero ser redirecionado para a página do cardápio