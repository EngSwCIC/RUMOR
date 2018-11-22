class RuReview < ApplicationRecord
  validates :nome, :email, :tipo_usuario, :nota_limpeza_restaurante, :nota_limpeza_banheiro, :nota_caixa, :nota_porta_objetos, :presence => true
end
