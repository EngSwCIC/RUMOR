Dado /^que eu estou na página onde a avaliação é mostrada$/ do 
    visit view_rating_path
end
  
Dado("que a refeição é Café da Manhã eu devo visualizar o texto {string}") do |string|
    expect(page).to have_content(string)
end

Dado("que a refeição é Almoço eu devo visualizar o texto {string}") do |string|
    expect(page).to have_content(string)
end

Dado("que a refeição é Jantar eu devo visualizar o texto {string}") do |string|
    expect(page).to have_content(string)
end

Quando("eu escolho o nome {string}") do |string|
    page.select string, visible: false
end


Quando("clico no botão {string}") do |string|
    find_button(string).click
end

Então("eu devo ver o resultado {string}") do |string|
    expect(page).to have_content(string)
end
