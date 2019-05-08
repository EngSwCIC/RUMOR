class AddMenuToLunches < ActiveRecord::Migration[5.2]
  def change
    add_reference :lunches, :menu, foreign_key: true
  end
end
