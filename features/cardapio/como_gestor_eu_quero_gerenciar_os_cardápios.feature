#language: pt
#encoding: utf-8

@cardápio
Funcionalidade: como_gestor_eu_quero_gerenciar_os_cardápios
  Como gestor
  Para que eu possa atualizar os cardápios
  Eu quero gerenciar os cardápios

  Cenário: Gestor gerenciar os cardápios
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E eu clico em "04"
    E eu clico em "Edit"
    Quando eu clico no botão "Atualizar Cardápio"
    Então eu deveria ver "Menu was successfully updated"
  
  Cenário: Gestor gerenciar café da manhã
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E o cardápio "04" está completo
    E eu clico em "04"
    E eu clico em "Editar Café da Manhã"
    Quando eu clico no botão "Atualizar Desjejum"
    Então eu deveria ver "Desjejum atualizado com sucesso"

  Cenário: Gestor gerenciar almoço
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E o cardápio "04" está completo
    E eu clico em "04"
    E eu clico em "Editar Almoço"
    Quando eu clico no botão "Atualizar Almoço"
    Então eu deveria ver "Almoço atualizado com sucesso"

  Cenário: Gestor gerenciar jantar
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E o cardápio "04" está completo
    E eu clico em "04"
    E eu clico em "Editar Jantar"
    Quando eu clico no botão "Atualizar Jantar"
    Então eu deveria ver "Jantar atualizado com sucesso"


