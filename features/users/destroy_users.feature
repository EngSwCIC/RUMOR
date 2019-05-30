#language: pt
#encoding: utf-8

Funcionalidade: destroy_users
  Como um administrardor do aplicativo RUMOR
  Para que eu possa limitar o acesso
  Eu quero deletar administradores

  Cenario: Excluir usuario com sucesso
  Dado que eu estou logado como gestor
  E eu estaja na pagina de ver usuarios
  E clicar no botão "Apagar"
  Então eu devo ser redirecionado para página de usuarios
  E devo ver a mensagem "usuario apagado com sucesso"
