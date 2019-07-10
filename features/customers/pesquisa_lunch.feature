#language: pt
#encoding: utf-8

Funcionalidade:  Como administrador quero visualizar somente os almoço separado das outras refeições 
  Como um administrardor do aplicativo RUMOR
  Quero ver o somente a pesquisa de janta separada
 
  Cenario:  Visualizar somente as jantas
    Dado que faça o login com "user@user.com" e "user123"
    E entre na pagina inicial 
    Quando eu clicar em "VER PESQUISAS"
    Então quero ver todas as pesquisas
    E ao clicar em "Almoço"
    Então vejo todos os resultados somente de janta
