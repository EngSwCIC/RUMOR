#language:pt
#encoding: utf-8

Funcionalidade: Como administrador quero visualizar somente o Grupo 1 separado dos outros grupos 


    Cenario: Visualizar somente o Grupo 1

        Dado que faça o login com "user@user.com" e "user123"
        E entre na pagina inicial 
        Quando eu clicar em "VER PESQUISAS"
        Então quero ver todas as pesquisas
        E ao clicar em "Grupo 1"
        Então vejo todos os resultados somente do Grupo 1