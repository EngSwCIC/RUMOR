#language: pt
#encoding: utf-8

Funcionalidade: index_users
  Como um administrardor do aplicativo RUMOR
  Para que eu possa gerenciar melhor o sistema
  Eu quero ver todos os administradores cadastrados

  Cenario: Ver todos os usuarios
    Dado que eu estou logado como gestor
    E eu estaja na pagina de ver usuarios
    Entao eu quero ver os usuarios "<nome>", "<email>"
