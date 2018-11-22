#language: pt
#encoding: utf-8

@cardápio
Funcionalidade: como_gestor_eu_quero_visualizar_os_cardápios
  Como gestor
  Para que eu possa ter controle dos cardápios
  Eu quero visualizar os cardápios

  Cenário: Gestor visualizar os cardápios[Cenário - Feliz]
    Dado que eu estou logado como gestor
    E as datas foram carregadas
    Quando eu clico em "Cardápios"
    Então eu deveria ver "Cardápios do Mês"

  Cenario: Gestor visualizar cardápio específico
    Dado que eu estou logado como gestor
    E que eu estou na página de cardápios
    E ao ver o cardápio do dia '04'
    Então eu deveria ver "04, November 2018"