#language:pt
#encoding: utf-8

Funcionalidade: Como administrador quero visualizar somente os almoços separado das outras refeições 


Cenario: Visualizar somente os almoço

Dado que faça o login com "user@user.com" e "user123"
E entre na pagina inicial 
Quando eu clicar em "VER PESQUISAS"
Então quero ver todas as pesquisas
E ao clicar em "Almoco"
Então vejo todos os resultados somente de almoço