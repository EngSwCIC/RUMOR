class MenuReview < ActiveRecord::Base
  # Validação dos parâmetros
  validates :nome, :email, :tipo_usuario, :refeicao, :categoria, :nota, :presence => true
end