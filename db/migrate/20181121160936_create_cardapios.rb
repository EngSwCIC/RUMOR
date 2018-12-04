class CreateCardapios < ActiveRecord::Migration.maintain_test_schema!
  def change
    create_table :cardapios do |t|
      t.text :data
      t.text :campus
      t.text :bebidas_quentes
      t.text :bebida_vegetariana
      t.text :achocolatado
      t.text :pao
      t.text :pao_vegetariano
      t.text :complemento
      t.text :complemento_vegetariano
      t.text :frutas
      t.text :almoco_salada
      t.text :almoco_molho
      t.text :almoco_prato_principal
      t.text :guarnicao
      t.text :almoco_prato_vegetariano
      t.text :almoco_acompanhamentos
      t.text :almoco_sobremesa
      t.text :almoco_refresco
      t.text :jantar_salada
      t.text :jantar_molho
      t.text :jantar_prato_principal
      t.text :sopa
      t.text :jantar_prato_vegetariano
      t.text :jantar_acompanhamentos
      t.text :jantar_sobremesa
      t.text :jantar_refresco
      t.timestamps
    end
  end
end