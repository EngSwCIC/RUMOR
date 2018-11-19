class MenuReview < ActiveRecord::Base
  validates :nome, :email, :tipo_usuario, :refeicao, :categoria, :nota, :consideracao, :presence => true
end