#language: pt
#encoding: utf-8

require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "../../", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "../../", "support", "selectors"))

Dado /^que (?:|eu )estou logado como (.+)$/ do |funcao_na_plataforma|
  if funcao_na_plataforma == "gestor"
    email = 'gestorteste@email.com'
    password = 'senha123'

    visit '/users/sign_up'
    fill_in 'user_email', :with => email
    fill_in 'user_password', :with => password
    fill_in 'user_password_confirmation', :with => password
    click_button "Sign up"
    expect(page).to have_text("Seja bem-vindo, #{email}!")

  end
end


Quando /^(?:|eu )visito a (.+)$/ do |page_name|
  pending
end

Quando /^(?:|eu )clico em "([^"]*)"$/ do |text|
  pending
end

Quando /^(?:|eu )selecionar (?:|a |o )([^"]*) como "([^"]*)"$/ do |selection_id, option_name|
  pending
end

Dado /^que (?:|eu )adiciono o arquivo de "(.+)"$/  do |string|
  pending
end


Dado /^que (?:|eu )estou na (.+)$/ do |page_name|
  puts page_name
  pending
end

E /^que (?:|eu )estou na (.+)$/ do |page_name|

  pending
end


E /^(?:|que )(?:|eu )preencho os campos adequadamente.$/ do
  pending
end

Dado /^(?:|que )(?:|eu )preencho os campos inadequadamente.$/ do
  pending
end

Então /^(?:|eu )deveria ver "([^"]*)"$/ do |text|
  pending
end

Então /^(?:|eu )não deveria ver "([^"]*)"$/ do |text|
  pending
end

Então /^(?:|eu )deveria estar na ([^"]*)$/ do |page_name|
  pending
end

Então /^(?:|eu )quero ser redirecionado para ([^"]*)$/ do |page_name|
  pending
end

Então /^(?:|eu )não quero ser redirecionado para ([^"]*)$/ do |page_name|
  pending
end

E /^ao ver um cardápio válido$/ do
  pending
  end
E /^ao ver o cardápio do dia (.+)$/ do |data|
  pending
end

E  /^uma mensagem de erro deve aparecer$/ do
  pending
end

Dado /^ao ver um cardápio de (.+)$/ do |opcao|
  pending # Write code here that turns the phrase above into concrete actions
end

