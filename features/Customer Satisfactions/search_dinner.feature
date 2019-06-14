#language:pt
#encoding: utf-8

Funcionalidade: Como administrador quero visualizar somente as jantas separado das outras refeições 


Cenario: Visualizar somente as jantas

Dado que faça o login com "user@user.com" e "user123"
E entre na pagina inicial 
Quando eu clicar em "VER PESQUISAS"
Então quero ver todas as pesquisas
E ao clicar em "Janta"
Então vejo todos os resultados somente de janta