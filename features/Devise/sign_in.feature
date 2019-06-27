#language: pt
#encoding: utf-8

Funcionalidade: sign_in
  Como usuário administrador do aplicativo RUMOR
  Para que eu possa ter acesso ao backoffice do aplicativo
  Eu quero poder logar no aplicativo utilizando username e password

  Cenário: quero ir para a pagina de login
    Dado que eu estou deslogado
    E na página inicial do aplicativo
    Quando eu clicar em "Administração"
    Então eu quero ser redirecionado para tela de login

  Cenário: quero efetuar um login
    Dado que eu estou na tela de login
    Quando eu preencher o formulário de login e efetuar o login
    Então quero ser redirecionado para página de cardápios
    E quero estar logado

  Cenário: quero efetuar um logout
    Dado que eu estou logado
    Quando eu clicar em "Sair"
    Então quero ser redirecionado para the home page
    E quero estar deslogado
