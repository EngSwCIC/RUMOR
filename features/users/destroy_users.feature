#language: pt
#encoding: utf-8

Funcionalidade: destroy_users
  Como um administrardor do aplicativo RUMOR
  Para que eu possa limitar o acesso
  Eu quero deletar administradores

  Cenario: Excluir usuario com sucesso [:)]
  Dado que eu estou logado como gestor
  E eu estaja na pagina de ver usuarios
  E que exista um usuario cadastrado
  Quando clicar no botão "Apagar"
  Então eu devo ser redirecionado para tela de login
  # E devo ver a mensagem "usuario apagado com sucesso"

  Cenario: Excluir usuario nao autorizado [:(]
  Dado que eu nao estou logado como gestor
  Quando eu estaja na pagina de ver usuarios
  Entao eu devo ser redirecionado para tela de login
