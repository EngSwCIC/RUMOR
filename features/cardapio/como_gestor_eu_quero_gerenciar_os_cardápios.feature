#language: pt
#encoding: utf-8

@cardápio
Funcionalidade: como_gestor_eu_quero_gerenciar_os_cardápios
  Como gestor
  Para que eu possa editar os cardápios
  Eu quero gerenciar os cardápios

  Cenário: Gestor gerenciar os cardápios[Cenário - Feliz]
    Dado que eu estou logado como gestor
    E que eu estou na página de cardápios
    E ao ver o cardápio da semana 1 do mês de novembro
    Quando eu clicar em "Gerenciar Cardápio"
    Então eu quero ser redirecionado para a página de edição de cardápio
  
  Cenário: Gestor gerenciar os cardápios[Cenário - Triste]
    Dado que eu estou logado como gestor
    E que eu estou na página de cardápios
    E ao ver o cardápio da semana 1 do mês de novembro
    Quando eu clicar em "Gerenciar Cardápio"
    Então eu não quero ser redirecionado para a página de edição de cardápio
    E uma mensagem de erro deve aparecer