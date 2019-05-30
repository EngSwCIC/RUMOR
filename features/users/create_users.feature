#language: pt
#encoding: utf-8

Funcionalidade: create_users
  Como um administrardor do aplicativo RUMOR
  Para que eu possa gerenciar melhor o sistema
  Eu quero cadastrar novos administradores

Cenario: Criar usuario com sucesso
  Dado que eu estou logado como gestor
  E eu estaja na pagina de ver usuarios
  E clicar no botão "Novo usuario"
  E preencher o formulario com:
  |user_name      |admin2              |
  |user_email     |admin@admin.com     |
  |user_password  |123456              |
  |user_password_confirmation|123456   |
  E clicar no botão "Cadastrar usuario"
  Então eu devo ser redirecionado para página de usuarios
  E devo ver a mensagem "usuario criado com sucesso"
