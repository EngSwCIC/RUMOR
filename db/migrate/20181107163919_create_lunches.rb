class CreateLunches < ActiveRecord::Migration[5.2]
  def change
    create_table :lunches do |t|
      t.string :salad
      t.string :sauce
      t.string :main_course
      t.string :garnish
      t.string :vegetarian_dish
      t.string :accompaniments
      t.string :dessert
      t.string :juice

      t.timestamps
    end
  end
end
