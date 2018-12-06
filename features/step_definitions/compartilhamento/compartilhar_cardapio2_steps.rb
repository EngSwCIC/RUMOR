Quando("eu clico em “Compartilhar”") do
  visit "pages/cardapio"
end

Então("eu devo ver o link do cardápio") do
  expect(page).to have_content("http://localhost:3000/pages/cardapio_1")
end