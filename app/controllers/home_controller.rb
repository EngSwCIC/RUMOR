class HomeController < ApplicationController

  #metodo criado apenas pra renderização da pagina inicial
  def index
    @menus = Menu.all
    @week_menus = Menu.this_week.sort_by {|a| a.date }
  end

end
