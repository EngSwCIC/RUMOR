class AddMenuToBreakfasts < ActiveRecord::Migration[5.2]
  def change
    add_reference :breakfasts, :menu, foreign_key: true
  end
end
