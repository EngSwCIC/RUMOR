class CreateCustomerSatisfactions < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_satisfactions do |t|
      t.integer :user_group
      t.string :meal
      t.integer :rating
      t.text :like
      t.text :disgust
      t.text :suggestion

      t.timestamps
    end
  end
end
