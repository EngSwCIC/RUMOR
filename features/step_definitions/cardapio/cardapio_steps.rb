require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "../../", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "../../", "support", "selectors"))

Dado /^que (?:|eu )estou logado como (.+)$/ do |funcao|
end


Quando /^(?:|eu )visito a (.+)$/ do |page_name|
end

Quando /^(?:|eu )clico em "([^"]*)"$/ do |text|
end

Quando /^(?:|eu )selecionar (?:|a |o )([^"]*) como "([^"]*)"$/ do |selection_id, option_name|
end

Dado /^que (?:|eu )adiciono o arquivo de "(.+)"$/  do |string|
end


Dado /^que (?:|eu )estou na (.+)$/ do |page_name|
  
end


E /^(?:|que )(?:|eu )preencho os campos adequadamente.$/ do
end

Dado /^(?:|que )(?:|eu )preencho os campos inadequadamente.$/ do
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

E  /^uma mensagem de erro deve aparecer$/ do
end