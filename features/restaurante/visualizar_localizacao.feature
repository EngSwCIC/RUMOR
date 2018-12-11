#language: pt
#encoding: utf-8

Funcionalidade: Eu, enquanto usuário, consigo visualizar a localização

Cenário de Fundo:
Dado que eu estou na página de visualização do cardápio consultado

Cenário: Usuário visualiza as informações do RU do campus de entrada (Happy Path)
Quando eu clico no link "darcy_link"
E eu deveria ver o titulo "Localização Darcy Ribeiro"
E eu deveria ver a imagem "img[src*='darcy']"

Cenário: Usuário visualiza as informações do RU do campus de entrada (Happy Path)
Quando eu clico no link "gama_link"
E eu deveria ver o titulo "Localização Gama"
E eu deveria ver a imagem "img[src*='gama']"

Cenário: Usuário visualiza as informações do RU do campus de entrada (Happy Path)
Quando eu clico no link "ceilandia_link"
E eu deveria ver o titulo "Localização Ceilandia"
E eu deveria ver a imagem "img[src*='ceilandia']"

Cenário: Usuário visualiza as informações do RU do campus de entrada (Happy Path)
Quando eu clico no link "planaltina_link"
E eu deveria ver o titulo "Localização Planaltina"
E eu deveria ver a imagem "img[src*='planaltina']"
