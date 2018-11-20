module MenusHelper
  def this_month_menu(menus)
    chosen = []
    this_month = Date.today.strftime("%Y %m")
    menus.each do |m|
        if(m.date.strftime("%Y %m") == this_month)
          chosen << m
        end
    end
    return chosen
  end
end
