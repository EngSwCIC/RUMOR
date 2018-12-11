#encoding: utf-8
##
# Definição dos steps para testes Cucumber

Dado /^que eu estou na página de avaliação de restaurante$/ do
  visit ('/ru_reviews/new')
end

Dado /^que eu estou na página de avaliação de cardápio$/ do
  visit ('/menu_reviews/new')
end

Quando (/eu preencho o formulário de avaliação com:/) do |table|
  table.rows_hash.each do |field, value|
    if field == 'Tipo de usuário' or field =='Refeição' or field == 'Nota'
      select(value, :from => field)
    else
      fill_in field, :with => value
    end
  end
end

Quando (/eu preencho o formulário de avaliação do estabelecimento com:/) do |table|
  table.rows_hash.each do |field, value|
    if (field == 'Tipo de usuário' or field =='Nota para limpeza do restaurante' or field == 'Nota para limpeza dos banheiros' or field == 'Nota para organização do caixa' or field == 'Nota para porta-objetos')
      select(value, :from => field)
    else
      fill_in field, :with => value
    end
  end
end

E (/^(?:|eu )pressiono "([^"]*)"$/) do |button|
  click_button(button)
end

Então(/^eu devo estar na página de "(.*?)"$/) do |mensagem|
  expect(page).to have_content(mensagem)
end

Então (/^(?:|eu )devo ver "([^"]*)"$/) do |text|
  if page.respond_to? :should
    page.should have_content(text)
  else
    assert page.has_content?(text)
  end
end