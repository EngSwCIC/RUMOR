require 'date'

class HomeController < ApplicationController

  #metodo criado apenas pra renderização da pagina inicial
  def index
    @menus = Menu.all
    @month_menu = this_month_menu(@menus).sort_by {|a| a.date }
    @today = Date.today
  end

end
