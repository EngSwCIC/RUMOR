class HomeController < ApplicationController

  #metodo criado apenas pra renderização da pagina inicial
  def index
    @menus = Menu.all.sort_by {|a| a.date }
    all_menus = Menu.this_week.sort_by {|a| a.date }

    # Parseia os menus da semana para ter o tamanho de uma semana completa (7 dias) e apresentarem falso quando não há menu
    week_menus_parser  = Array.new(7, false)
    (1..7).each do |day|
      has_menu = all_menus.select { |e| e.date.strftime("%w").to_i  == day }
      unless has_menu.empty?
        week_menus_parser[day-1] = has_menu.first
      end
    end
    @week_menus = week_menus_parser
  end

end
