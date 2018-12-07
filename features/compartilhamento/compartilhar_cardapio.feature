#language: pt
#encoding: utf-8

Funcionalidade: Eu, enquanto usuário, posso compartilhar um cardápio selecionado

Cenário de Fundo:
Dado que eu estou na página de compartilhamento do cardápio consultado

Cenário: Usuário copia o link do cardápio para compartilhá-lo (Happy Path)
Quando eu ver o link "http://localhost:3000/pages/cardapio_1"
E eu devo ver o botão "Compartilhar"
Então eu devo clicar em "Compartilhar" depois ver a mensagem "Link copiado para o clipboard!" depois clicar em "OK"
Então eu devo preencher no campo de teste o link do cardapio "http://localhost:3000/pages/cardapio_1"

