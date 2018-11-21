#language: pt
#encoding: utf-8

@cardápio
Funcionalidade: como_gestor_eu_quero_gerenciar_os_cardápios
  Como gestor
  Para que eu possa editar os cardápios
  Eu quero gerenciar os cardápios

  Cenário: Gestor gerenciar os cardápios
    Dado que eu estou logado como gestor
    E que eu estou na página de cardápios
    E ao ver um cardápio válido
    Quando eu clicar em "Gerenciar Cardápio"
    Então eu quero ser redirecionado para a página de edição de cardápio

  Cenário: Gestor gerenciar café da manhã
    Dado que eu estou logado como gestor
    E que eu estou na página de edição de café da manhã
    E ao ver um cardápio de desjejum
    Quando eu clicar em "Editar desjejum"
    Então eu quero ser redirecionado para a página de edição de desjejum

  Cenário: Gestor gerenciar almoço
    Dado que eu estou logado como gestor
    E que eu estou na página de edição de cardápio
    E ao ver um cardápio de almoço
    Quando eu clicar em "Editar almoço"
    Então eu quero ser redirecionado para a página de edição de almoço

  Cenário: Gestor gerenciar jantar
    Dado que eu estou logado como gestor
    E que eu estou na página de edição de cardápio
    E ao ver um cardápio de jantar
    Quando eu clicar em "Editar jantar"
    Então eu quero ser redirecionado para a página de edição de jantar


