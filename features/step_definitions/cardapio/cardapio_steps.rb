#language: pt
#encoding: utf-8

require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "../../", "support", "paths"))
require File.expand_path(File.join(File.dirname(__FILE__), "../../", "support", "selectors"))
require "xpath"

# capybara_select_dates_and_times.rb was a creation of user @szimek on github all credits givem to him
module Cucumber
  module Rails
    module CapybaraSelectDatesAndTimes
      def select_date(field, options = {})
        date     = Date.parse(options[:with])
        expect(page).to have_text("New Menu")
        selector = %Q{.//fieldset[contains(./legend, "#{field}")]}
        within(:xpath, selector) do
          find(:xpath, './/select[contains(@id, "_1i")]').find(:xpath, ::XPath::HTML.option(date.year.to_s)).select_option
          find(:xpath, './/select[contains(@id, "_2i")]').find(:xpath, ::XPath::HTML.option(date.strftime('%B').to_s)).select_option
          find(:xpath, './/select[contains(@id, "_3i")]').find(:xpath, ::XPath::HTML.option(date.day.to_s)).select_option
        end
      end

      def select_time(field, options = {})
        time     = Time.parse(options[:with])
        selector = %Q{.//fieldset[contains(./legend, "#{field}")]}
        within(:xpath, selector) do
          find(:xpath, './/select[contains(@id, "_4i")]').find(:xpath, ::XPath::HTML.option(time.hour.to_s.rjust(2,'0'))).select_option
          find(:xpath, './/select[contains(@id, "_5i")]').find(:xpath, ::XPath::HTML.option(time.min.to_s.rjust(2,'0'))).select_option
        end
      end

      def select_datetime(field, options = {})
        select_date(field, options)
        select_time(field, options)
      end
    end
  end
end
World(Cucumber::Rails::CapybaraSelectDatesAndTimes)

module CardapioHelpers 
  def login(email, senha)
    visit '/users/sign_in'
    expect(page).to have_text("Email")
    fill_in 'user_email', :with => email
    fill_in 'user_password', :with => senha
    click_button "Sign in"
    expect(page).to have_text("Seja bem-vindo, #{email}!")
  end

  def registrar_usuario(email, senha)
    visit '/users/sign_up'
    fill_in 'user_email', :with => email
    fill_in 'user_password', :with => senha
    fill_in 'user_password_confirmation', :with => senha
    click_button "Sign up"
    expect(page).to have_text("Seja bem-vindo, #{email}!")
  end

  def seleciona_data(year, month, day, hour, minute, label_text)
    label = page.find('label', text: label_text)
    id = label['for']
    select year,   from: "#{id}_1i"
    select month,  from: "#{id}_2i"
    select day,    from: "#{id}_3i"
    select hour,   from: "#{id}_4i"
    select minute, from: "#{id}_5i"
  end
end
World(CardapioHelpers)

Dado /^que (?:|eu )estou logado como (.+)$/ do |funcao_na_plataforma|
  if funcao_na_plataforma == "gestor"
    email_gestor = 'gestorteste@email.com'
    senha_gestor = 'senha123'

    registrar_usuario email_gestor, senha_gestor

    @gestor = User.find_by(:email => email_gestor)
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


E /^que (?:|eu )estou na (.+)$/ do |page_name|
  visit path_to(page_name)
end


E /^(?:|que )(?:|eu )preencho os campos adequadamente.$/ do
  seleciona_data(2018, "November", 21, 21, 31, "Date")
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
