class CreateRuReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :ru_reviews do |t|
      t.string 'nome'
      t.string 'email'
      t.string 'tipo_usuario'
      t.integer 'nota_limpeza_restaurante'
      t.integer 'nota_limpeza_banheiro'
      t.integer 'nota_caixa'
      t.integer 'nota_porta_objetos'
      t.text 'consideracao'

      t.timestamps
    end
  end
end
