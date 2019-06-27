#language: pt
#encoding: utf-8

Funcionalidade: create_users
  Como um administrardor do aplicativo RUMOR
  Para que eu possa gerenciar melhor o sistema
  Eu quero cadastrar novos administradores

  Cenario de Fundo: Comecar da pagina de registro de usuarios
    Dado que eu estou logado como gestor
    E eu estaja na pagina de ver usuarios
    E clicar no botão "Novo usuario"

  Cenario: Criar usuario com sucesso [:)]
    Quando preencher o formulario com:
    |user_name      |admin2              |
    |user_email     |admin@admin.com     |
    |user_password  |123456              |
    |user_password_confirmation|123456   |
    E clicar no botão "Submit"
    Então eu devo ser redirecionado para página de usuarios
    E devo ver a mensagem "usuario criado com sucesso"

  Cenario: Criar usuario sem informar senha [:(]
    Quando preencher o formulario com:
    |user_name      |admin2              |
    |user_email     |admin@admin.com     |
    E clicar no botão "Submit"
    Então devo ver a mensagem "Password can't be blank"

  Cenario: Criar usuario sem informar email [:(]
    Quando preencher o formulario com:
    |user_name      |admin2              |
    |user_password  |123456              |
    |user_password_confirmation|123456   |
    E clicar no botão "Submit"
    Então devo ver a mensagem "Email can't be blank"
