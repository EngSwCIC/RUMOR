#language:pt 
#encoding: utf-8

Funcionalidade: Pesquisas de satisfação

#index
  Delineação do Cenário: Listar todos as Pesquisas
    Dado que eu tenha uma lista de pesquisas "<user_group>", "<meal>", "<rating>", "<like>", "<disgust>", "<suggestion>"
    E que eu esteja na página index de pesquisas
    Então eu devo ver a lista completa com as pesquisas "<user_group>", "<meal>", "<rating>", "<like>", "<disgust>", "<suggestion>"
    Exemplos:
      |user_group |meal   |rating |like                               |disgust                              |suggestion                       |
      |2          |Almoco |5      |Dicta aut qui debitis.             |Eveniet sit voluptatem vel.          |Id aut quis aliquid.	            |
      |3          |Cafe   |2      |Ut eum ducimus voluptatem.	        |Ad quas reprehenderit voluptates.	  |Nostrum et vero optio.         	|
      |2          |Janta  |1      |Repudiandae adipisci placeat magni.|Voluptatem quibusdam expedita magni. |Eligendi id vero tempore.      	|
      |3          |Janta  |3      |Eum quos totam expedita.           |Eum ipsam doloribus ad.	            |Consequatur veritatis quia quas.	|
  #show
  Cenário: Mostrar uma pesquisa
    Dado que eu tenha uma pesquisa criada com os atributos:
      |user_group |2                          |
      |meal       |Almoco                     |
      |rating     |5                          |
      |like       |Dicta aut qui debitis.     |
      |disgust    |Eveniet sit voluptatem vel.|
      |suggestion |Id aut quis aliquid.       |
      
    E que eu esteja na página index de pesquisas
    Quando eu clicar no link para ver detalhes daquela pesquisa
    Então eu devo ver a página de pesquisa com os dados dela:
      |user_group |2                          |
      |meal       |Almoco                     |
      |rating     |5                          |
      |like       |Dicta aut qui debitis.     |
      |disgust    |Eveniet sit voluptatem vel.|
      |suggestion |Id aut quis aliquid.       |