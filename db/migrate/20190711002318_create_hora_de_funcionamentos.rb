class CreateHoraDeFuncionamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :hora_de_funcionamentos do |t|
      t.string :dia
      t.string :inicio
      t.string :fechamento

      t.timestamps
    end
  end
end
