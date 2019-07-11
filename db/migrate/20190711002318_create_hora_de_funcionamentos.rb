class CreateHoraDeFuncionamentos < ActiveRecord::Migration[5.2]
  def change
    create_table :hora_de_funcionamentos do |t|
      t.date :dia
      t.timestamp :inicio
      t.timestamp :fechamento

      t.timestamps
    end
  end
end
