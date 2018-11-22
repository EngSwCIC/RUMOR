Dado("que eu estou na página de visualização do cardápio consultado") do
  visit "pages/cardapio"
end

Quando("eu clico no link do Campus") do
  click_on "darcy_link"
end

Então("eu devo entrar na página de visualização da localização do Campus selecionado") do
  expect(page).to have_content("Localização Darcy Ribeiro")
end

#Então("eu deveria ver a imagem {string}") do |string|
  #page.should have_xpath("//img[@src='darcy.jpeg']")
#end
