require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "../../", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "../../", "support", "selectors"))

Quando /^(?:|Eu )preencho.$/ do |fields|
  fields.rows_hash.each do |name, value|
    Quando %{Eu preencho "#{name}" com "#{value}"}
  end
end
