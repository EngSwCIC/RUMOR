class User < ApplicationRecord
  # Módulos padrão do Devise
  # Faz validação dos campos do form (atributos) e validações no banco de dados
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable
end
