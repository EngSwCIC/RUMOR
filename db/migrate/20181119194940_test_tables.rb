class TestTables < ActiveRecord::Migration[5.2]
  def change

    #revert ExampleMigration

    create_table :test_tables do |t|
      t.string :salada, null: false
      t.string :molho, null: false
      t.string :principal, null: false
      t.string :guarnicao, null: false
      t.string :vegetariano, null: false
      t.string :acomp, null: false
      t.string :sobremesa, null: false
      t.string :refresco, null: false
    end
  end

  say "Created a table"

end
