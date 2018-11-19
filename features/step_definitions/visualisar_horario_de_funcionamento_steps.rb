
Dado /^que eu estou na página de visualização de horário$/ do 
  visit rus_path
end

Quando("eu seleciono o nome {string}") do |string|
  page.select string, from: 'name'
end

Quando("aperto em {string}") do |string|
  find_button(string).click
end

Então("eu devo visualizar o resultado {string}") do |string|
  page.should have_content(string)
end


Então("eu não devo visualizar o resultado {string}") do |string|
  page.should have_no_content(string)
end