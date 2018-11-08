class CreateDinners < ActiveRecord::Migration[5.2]
  def change
    create_table :dinners do |t|
      t.string :salad
      t.string :sauce
      t.string :soup
      t.string :main_course
      t.string :vegetarian_dish
      t.string :accompaniments
      t.string :dessert
      t.string :juice

      t.timestamps
    end
  end
end
