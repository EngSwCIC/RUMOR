require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "selectors"))

Dado /^que (?:|eu )estou logado como "(.+)"$/ do |email|
  visit path_to("página de login")
  fill_in "Email", with: email
  fill_in "Senha", with: "senha123"
  click_button "Log in"
end


Quando /^(?:|eu )visito a (.+)$/ do |page_name|
end

Quando /^(?:|eu )clicar em "([^"]*)"$/ do |text|
  click_link text
end

Quando /^(?:|eu )selecionar (?:|a |o )([^"]*) como "([^"]*)"$/ do |selection_id, option_name|
end

Dado /^que (?:|eu )adiciono o arquivo (.+)$/  do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Dado /^que (?:|eu )estou na (.+)$/ do |page_name|
    
end
  
Dado /^(?:|eu )preencher os campos adequadamente.$/ do
  pending # Write code here that turns the phrase above into concrete actions
end

Dado /^(?:|eu )preencher os campos inadequadamente.$/ do
  pending # Write code here that turns the phrase above into concrete actions
end

E /^que (?:|eu )estou na (.+)$/ do |page_name|
    
end

Então /^(?:|eu )deveria ver "([^"]*)"$/ do |text|
end

Então /^(?:|eu )não deveria ver "([^"]*)"$/ do |text|
end

Então /^(?:|eu )deveria estar na ([^"]*)$/ do |page_name|
end

Então /^(?:|eu )quero ser redirecionado para ([^"]*)$/ do |page_name|
end

Então /^(?:|eu )não quero ser redirecionado para ([^"]*)$/ do |page_name|
end

Então /^(?:|eu )uma mensagem de erro deve aparecer $/ do
  pending # Write code here that turns the phrase above into concrete actions
end