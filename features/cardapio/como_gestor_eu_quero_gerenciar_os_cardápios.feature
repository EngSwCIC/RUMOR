#language: pt
#encoding: utf-8

@cardápio
Funcionalidade: como_gestor_eu_quero_gerenciar_os_cardápios
  Como gestor
  Para que eu possa editar os cardápios
  Eu quero gerenciar os cardápios

  Cenário: Gestor gerenciar os cardápios
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E eu clico em "04"
    Quando eu clico em "Edit"
    Então eu deveria ver "Edição de Cardápio"

  Cenário: Gestor gerenciar café da manhã
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E o cardápio "04" está completo
    E eu clico em "04"
    Quando eu clico em "Editar Café da Manhã"
    Então eu deveria ver "Alterações no Café da Manhã"

  Cenário: Gestor gerenciar almoço
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E o cardápio "04" está completo
    E eu clico em "04"
    Quando eu clico em "Editar Almoço"
    Então eu deveria ver "Alterações no Almoço"

  Cenário: Gestor gerenciar jantar
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E o cardápio "04" está completo
    E eu clico em "04"
    Quando eu clico em "Editar Jantar"
    Então eu deveria ver "Alterações no Jantar"


