class CreateMenuReviews < ActiveRecord::Migration[5.2]
  def change
    create_table 'menu_reviews' do |t|
      t.string 'nome'
      t.string 'email'
      t.string 'tipo_usuario'
      t.string 'refeicao'
      t.string 'categoria'
      t.integer 'nota'
      t.text 'consideracao'
      t.timestamps
    end
  end
end
