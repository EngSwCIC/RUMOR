#language: pt
#encoding: utf-8

Funcionalidade: edit_users
  Como um administrardor do aplicativo RUMOR
  Para que eu possa atualizar informacoes sobre os administradores
  Eu quero editar administradores

  Cenario: Editar usuario com sucesso
    Dado que eu estou logado como gestor
  E eu estaja na pagina de ver usuarios
  E clicar no botão "Editar"
  E preencher o formulario com:
  |user_name      |admin2              |
  |user_email     |admin@admin.com     |
  |user_password  |123456              |
  |user_password_confirmation|123456   |
  E clicar no botão "Editar usuario"
  Então eu devo ser redirecionado para página de usuarios
  E devo ver a mensagem "usuario editado com sucesso"
  E ver o usuario modificado "admin2", "admin@admin.com"
