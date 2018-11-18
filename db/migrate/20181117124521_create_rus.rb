# frozen_string_literal: true

class CreateRus < ActiveRecord::Migration[5.2]
  def change
    create_table :rus do |t|
      t.string :name
      t.text :working_hour
      t.text :location

      t.timestamps
    end
  end
end
