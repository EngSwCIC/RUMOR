require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "../../", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "../../", "support", "selectors"))

Dado /^que (?:|eu )estou logado como (.+)$/ do |funcao|
  pending
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

E  /^uma mensagem de erro deve aparecer$/ do
  pending
end