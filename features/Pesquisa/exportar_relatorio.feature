#language:pt

Funcionalidade: Testar a exportação dos relatorios da pesquisa de satisfação


Cenario: Exportar um relatorio da pesquisa de satisfação

Dado que eu esteja logado com gestor com o email "gestor@gestor.com" e a senha "gestor567"
E eu esteja na página de visualização de relatorio pesquisas de satisfação
E quando eu apertar o botão de exportar relatorio "Exportar Relatorio"
Então Deve ser efetuado o download de  um pdf com o relatorio das pesquisas de satisfação
