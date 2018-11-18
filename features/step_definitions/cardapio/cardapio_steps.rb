# frozen_string_literal: true

require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), '../../', 'support', 'paths'))
require File.expand_path(File.join(File.dirname(__FILE__), '../../', 'support', 'selectors'))

Dado /^que (?:|eu )estou logado como (.+)$/ do |_funcao|
  pending
end

Quando /^(?:|eu )visito a (.+)$/ do |_page_name|
  pending
end

Quando /^(?:|eu )clico em "([^"]*)"$/ do |_text|
  pending
end

Quando /^(?:|eu )selecionar (?:|a |o )([^"]*) como "([^"]*)"$/ do |_selection_id, _option_name|
  pending
end

Dado /^que (?:|eu )adiciono o arquivo de "(.+)"$/ do |_string|
  pending
end

Dado /^que (?:|eu )estou na (.+)$/ do |_page_name|
  pending
end

E /^(?:|que )(?:|eu )preencho os campos adequadamente.$/ do
  pending
end

Dado /^(?:|que )(?:|eu )preencho os campos inadequadamente.$/ do
  pending
end

Então /^(?:|eu )deveria ver "([^"]*)"$/ do |_text|
  pending
end

Então /^(?:|eu )não deveria ver "([^"]*)"$/ do |_text|
  pending
end

Então /^(?:|eu )deveria estar na ([^"]*)$/ do |_page_name|
  pending
end

Então /^(?:|eu )quero ser redirecionado para ([^"]*)$/ do |_page_name|
  pending
end

Então /^(?:|eu )não quero ser redirecionado para ([^"]*)$/ do |_page_name|
  pending
end

E /^uma mensagem de erro deve aparecer$/ do
  pending
end
