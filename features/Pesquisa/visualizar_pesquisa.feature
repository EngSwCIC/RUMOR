#language:pt

Funcionalidade: Como gestor posso verificar as respostas das minhas pesquisas


Cenario: Visualizar os dados gerais da pesquisa

Dado que eu esteja logado com gestor com o email "gestor@gestor.com" e a senha "gestor567"
E eu esteja na página de criação de pesquisa
E ao ver a pesquisa do dia "24 / 10 / 2018"
Quando eu clicar em "Ver Detalhes"
Então eu poderei ver os resultados da pesquisa:
    | nota_qualidade_da_comida | | 5 | 
    | nota_qualidade_do_atendimento | | 3 | 
    | nota_qualidade_da_higenie | | 4 |
    | quanto_vc_recomendaria | | 9 | 

Quando eu clicar em "Detalhes por usuário"
Então poderei ver todos os usuraios que responderam a pesquisa
E clicar no "Diegod"
Então poderei ver as respostas individuais:
    | nota_qualidade_da_comida | | 1 | 
    | nota_qualidade_do_atendimento | | 1 | 
    | nota_qualidade_da_higenie | | 1 |
    | quanto_vc_recomendaria | | 9 | 