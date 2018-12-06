#language: pt
#encoding: utf-8

@cardápio
Funcionalidade: como_gestor_eu_quero_visualizar_os_cardápios
  Como gestor
  Para que eu possa ter controle dos cardápios
  Eu quero visualizar os cardápios

  # Cenário: Gestor visualizar os cardapios[Cenário - Feliz]
  #   Dado que eu estou logado como gestor
  #   E as datas foram carregadas
  #   Quando eu clico em "cardapio"
  #   Então eu deveria ver "cardapios do Mes"

  Cenario: Gestor visualizar cardápio específico
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    Quando eu clico em "04"
    Então eu deveria ver o dia "04" do mês atual
  
    # Cenário: Gestor visualizar edição dos cardápios
    # Dado que eu estou logado como gestor
    # E as datas foram carregadas
    # E que eu estou na página de cardápios
    # E eu clico em "04_"
    # Quando eu clico em "Edit"
    # Então eu deveria ver "Edição de Cardapio"

  Cenário: Gestor visualizar edição café da manhã
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E o cardápio "04" está completo
    E eu clico em "04"
    Quando eu clico em "Editar Café da Manhã"
    Então eu deveria ver "Alterações no Café da Manhã"

  Cenário: Gestor visualizar edição almoço
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E o cardápio "04" está completo
    E eu clico em "04"
    Quando eu clico em "Editar Almoço"
    Então eu deveria ver "Alterações no Almoço"

  Cenário: Gestor visualizar edição jantar
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E o cardápio "04" está completo
    E eu clico em "04"
    Quando eu clico em "Editar Jantar"
    Então eu deveria ver "Alterações no Jantar"