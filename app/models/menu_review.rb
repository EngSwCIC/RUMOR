class MenuReview < ActiveRecord::Base
  validates :nome, :email, :tipo_usuario, :refeicao, :categoria, :nota, :presence => true
end