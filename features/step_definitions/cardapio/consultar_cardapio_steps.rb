# encoding: utf-8
Dado /^que eu estou na página de consulta de cardápio$/ do
    visit ('/welcome/index')
end
     
Quando /^eu preencher a data com "(.*?)"$/ do |data|
    fill_in "data", with: data
end

E /^preencher o campus com "(.*?)"$/ do |campus|
    fill_in "campus", with: campus
end

E /^clicar em "(.*?)"$/ do |consultar_button|
    click_button(consultar_button)
end

E /^clicar no link "(.*?)"$/ do |link|
    click_link(link)
end

Então /^deve mostrar na tela o "(.*?)"$/ do |mensagem|
    expect(page).to have_content(mensagem)
end