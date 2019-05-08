class CreateBreakfasts < ActiveRecord::Migration[5.2]
  def change
    create_table :breakfasts do |t|
      t.string :hot_drinks
      t.string :vegetarian_drink
      t.string :chocolate_milk
      t.string :bread
      t.string :vegetarian_bread
      t.string :margarine
      t.string :vegetarian_margarine
      t.string :complement
      t.string :vegetarian_complement

      t.timestamps
    end
  end
end
