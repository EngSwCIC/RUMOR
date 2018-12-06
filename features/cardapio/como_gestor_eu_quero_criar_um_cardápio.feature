#language: pt
#encoding: utf-8

Funcionalidade: como_gestor_eu_quero_criar_um_cardápio
  Como gestor
  Para que eu possa armazenar refeições
  Eu quero criar um cardápio

  Cenário: Gestor criar um cardápio[Cenário - Feliz]
    Dado que eu estou logado como gestor
    E que eu estou na página de criar cardápio
    E que eu preencho os campos de "datas" adequadamente
    Quando eu clico no botão "Criar Cardápio"
    Então eu deveria ver "Menu was successfully created."

  Cenário: Gestor criar um desjejum[Cenário - Feliz]
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E eu clico em "04"
    E eu clico em "Criar Café da Manhã"
    E que eu preencho os campos de "desjejum" adequadamente
    Quando eu clico no botão "Criar Desjejum"
    Então eu deveria ver "Desjejum criado com sucesso"

    Cenário: Gestor criar um almoço[Cenário - Feliz]
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E eu clico em "04"
    E eu clico em "Criar Almoço"
    E que eu preencho os campos de "almoço" adequadamente
    Quando eu clico no botão "Criar Almoço"
    Então eu deveria ver "Almoço criado com sucesso"

    Cenário: Gestor criar um jantar[Cenário - Feliz]
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    E que eu estou na página de cardápios
    E eu clico em "04"
    E eu clico em "Criar Jantar"
    E que eu preencho os campos de "jantar" adequadamente
    Quando eu clico no botão "Criar Jantar"
    Então eu deveria ver "Jantar criado com sucesso"