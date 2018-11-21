class AddFruitToBreakfasts < ActiveRecord::Migration[5.2]
  def change
    add_column :breakfasts, :fruit, :string
  end
end
