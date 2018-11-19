class AddMenuToDinners < ActiveRecord::Migration[5.2]
  def change
    add_reference :dinners, :menu, foreign_key: true
  end
end
