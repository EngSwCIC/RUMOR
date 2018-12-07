require "./app/controllers/pages_controller.rb"

require "./spec/rails_helper.rb"
require 'spec_helper'

RSpec.feature "Static pages", :type => :feature do
  scenario "Visitando pagina de compartilhar cardapio" do
    visit "/pages/cardapio"
    expect(page).to have_content("CARDÁPIO")
    expect(page).to have_content("http://localhost:3000/pages/cardapio_1")
    expect(page).to have_button("Compartilhar")
    expect(page).to have_content("Localização Dos Restaurantes")
    expect(page).to have_content("Darcy Ribeiro")
    expect(page).to have_content("Gama")
    expect(page).to have_content("Ceilandia")
    expect(page).to have_content("Planaltina")
    expect(page).to have_content("Voltar")

    begin
      main, popup = page.driver.browser.window_handles
      within_window(popup) do
        expect(page).to have_content("Link copiado para o clipboard!")
        click_on("Compartilhar")
      end
    rescue
    end

    fill_in("Cole aqui para testar!", :with => "http://localhost:3000/pages/cardapio_1")

  end
end

RSpec.feature "Static pages", :type => :feature do
  scenario "Visitando paginas de Localizacao do Campus" do
    visit "/pages/darcy"
      expect(page).to have_content("Localização Darcy Ribeiro")
      expect(page).to have_css("img[src*='darcy']")
    visit "/pages/gama"
      expect(page).to have_content("Localização Gama")
      expect(page).to have_css("img[src*='gama']")
    visit "/pages/ceilandia"
      expect(page).to have_content("Localização Ceilandia")
      expect(page).to have_css("img[src*='ceilandia']")
    visit "/pages/planaltina"
      expect(page).to have_content("Localização Planaltina")
      expect(page).to have_css("img[src*='planaltina']")
  end
end
