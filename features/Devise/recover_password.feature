#language: pt
#encoding: utf-8

Funcionalidade: recover_password
  Como usuário administrador do aplicativo RUMOR
  Para que eu possa recuperar meu acesso ao aplicativo
  Eu quero poder alterar a minha senha caso eu a esqueça

  Cenário: quero recuperar minha senha estando deslogado

    Dado que eu estou deslogado e quero recuperar minha senha
    E que eu estou na tela de login
    Quando eu clicar em "Esqueci minha senha"
    Então eu quero ser redirecionado para a página de recuperação de senhas
