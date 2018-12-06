class CustomerSatisfaction < ApplicationRecord
  #validações para as pesquisas de satisfação
  #o grupo do usuario tem que ser  um numero entre 1 e 3 o rating tem que ser entre 1 e 5
  #todos os campos precisam ser preenchidos
  
  validates :user_group, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 3}
  validates :meal, presence: true
  validates :rating, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5}
  validates :like, presence: true
  validates :disgust, presence: true
  validates :suggestion, presence: true
end
