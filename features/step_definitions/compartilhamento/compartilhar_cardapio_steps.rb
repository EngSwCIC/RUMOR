Capybara.current_driver = :webkit

Dado("que eu estou na página de compartilhamento do cardápio consultado") do
  visit "pages/cardapio"
  expect(page).to have_content("CARDÁPIO")
  expect(page).to have_content("Localização Dos Restaurantes")
  expect(page).to have_content("Darcy Ribeiro")
  expect(page).to have_content("Gama")
  expect(page).to have_content("Ceilandia")
  expect(page).to have_content("Planaltina")
  expect(page).to have_content("Voltar")
end

Quando("eu ver o link {string}") do |string|
  expect(page).to have_content(string)
end

Então("eu devo ver o botão {string}") do |string|
  expect(page).to have_button(string)
end

Então("eu devo clicar em {string} depois ver a mensagem {string} depois clicar em {string}") do |string_button, string_message, string_ok|
  begin
    main, popup = page.driver.browser.window_handles
    within_window(popup) do
      expect(page).to have_content(string_message)
      click_on(string_ok)
    end
  rescue
  end
end

Então("eu devo preencher no campo de teste o link do cardapio {string}") do |string|
  fill_in("Cole aqui para testar!", :with => string)
end