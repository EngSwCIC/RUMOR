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
  
  # def last_month_menu(menus, first_day)
  #   this_month = first_day.yesterday.mon
  #   chosen = []
  #   menus.each do |m|
  #     if(m.date.mon == this_month)
  #       chosen << m
  #     end
  #   end
  #   return chosen
  #   end
  # def last_month_menu(menus, last_day)
  #   this_month = last_day.tomorrow.mon
  #   chosen = []
  #   menus.each do |m|
  #     if(m.date.mon == this_month)
  #       chosen << m
  #     end
  #   end
  #   return chosen
  # end

end
