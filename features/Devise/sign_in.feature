#language: pt
#encoding: utf-8

Funcionalidade: sign_in
  Como usuário administrador do aplicativo RUMOR
  Para que eu possa ter acesso ao backoffice do aplicativo
  Eu quero poder logar no aplicativo utilizando username e password

  Cenário: quero efetuar um login
    Dado que eu estou deslogado
    E na página inicial do aplicativo
    Quando eu clicar em "Administração"
    Então eu quero ser redirecionado para a tela de login

  Cenário: quero acessar o backoffice
    Dado que eu estou logado
    E que eu estou na página inicial do aplicativo
    Quando eu clicar em "Administração"
    Então eu quero ser redirecionado para a tela de backoffice

  Cenário: quero deslogar
    Dado que eu estou logado
    Quando eu clicar em "Sair"
    Então quero ser redirecionado para a tela inicial do aplicativo
    E quero estar deslogado
