# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/
      '/'
    when /^página de criar cardápio$/
      '/menus/new'

    when /^página de cardápios$/
      '/menus'
    
    when /^página de importar cardápio$/
      new_menus_import_path

    when /^tela de login$/
      new_user_session_path

    when /^a página de recuperação de senhas$/
      new_user_password_path

    when /^a tela de backoffice$/
      dashboard_home_path

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else

    end
  end
end

World(NavigationHelpers)
